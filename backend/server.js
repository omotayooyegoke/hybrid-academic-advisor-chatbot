const express = require("express");
const cors = require("cors");
const { spawn } = require("child_process");
const axios = require("axios");

const app = express();

app.use(cors());
app.use(express.json());

const PROLOG_FILE = "academic_advisor.pl";

// Run a Prolog query
function runPrologQuery(message, callback) {

const safeMessage = message
  .replace(/\\/g, "\\\\")
  .replace(/"/g, '\\"');

const prolog = spawn("swipl", [
"-q",
"-s",
PROLOG_FILE
]);

let output = "";
let error = "";

const query = `once(
  academic_advisor(
    "${safeMessage}",
    Reply
  )
),
format("~w~n",[Reply]),
halt.`;

prolog.stdout.on("data", (data) => {
output += data.toString();
});

prolog.stderr.on("data", (data) => {
error += data.toString();
});


prolog.on("close", () => {

console.log("========== OUTPUT ==========");
console.log(output);

console.log("========== ERROR ==========");
console.log(error);

// Only fail on real errors
if (
    error.includes("ERROR:") ||
    error.includes("Exception:")
) {
    callback("⚠️ Prolog error occurred.");
    return;
}

callback(
  output.trim() || "⚠️ No response from Prolog."
);

});

prolog.stdin.write(query);
prolog.stdin.end();
}

async function askPythonAI(question) {

  try {

    const response = await axios.post(
      "http://127.0.0.1:8000/ask",
      {
        question: question
      }
    );

    return response.data.answer;

  } catch (err) {

    console.error("Python AI Error:", err.message);

    return "⚠️ Python AI is unavailable.";

  }

}

// API endpoint
app.post("/chat", async (req, res) => {

const userMessage = req.body.message;

if (!userMessage || userMessage.trim() === "") {
return res.json({
reply: "Please type a message."
});
}

const lowerMessage = userMessage.toLowerCase();

if (
    lowerMessage.includes("which specialization should i choose") ||
    lowerMessage.includes("which should i choose") ||
    lowerMessage.includes("i enjoy") ||
    lowerMessage.includes("i like") ||
    lowerMessage.includes("best for me") ||
    lowerMessage.includes("based on my interests")
) {
    const aiReply = await askPythonAI(userMessage);

    return res.json({
        reply: aiReply.replace(/\n/g, "<br>")
    });
}

runPrologQuery(userMessage, async (reply) => {

  const prologReply = reply.trim();
  console.log("\n===== PROLOG REPLY =====");
  console.log(prologReply);
  console.log("========================\n");

  // If Prolog couldn't answer, ask the Python AI
if (
    prologReply === "" ||
    prologReply === "⚠️ No response from Prolog." ||
    prologReply === "__NO_MATCH__"
) {
    const aiReply = await askPythonAI(userMessage);

    return res.json({
        reply: aiReply.replace(/\n/g, "<br>")
    });
}

  // Otherwise use the Prolog answer
  res.json({
    reply:
        "🎓 <b>Expert System</b><br><br>" +
        prologReply.replace(/\n/g, "<br>")
});

});

});

// Start server
const PORT = 5000;

app.listen(PORT, () => {
console.log(
`Academic Advisor server running on http://localhost:${PORT}`
);
});
