import { useState, useEffect, useRef } from "react";
import { v4 as uuidv4 } from "uuid";

export default function App() {

  const getTime = () =>
    new Date().toLocaleTimeString([], { hour: "2-digit", minute: "2-digit" });

  const [messages, setMessages] = useState([
    {
      from: "bot",
      text: "<i>Hello! I'm your MSc Systems Engineering Academic Advisor. I can answer questions about the programme, courses, specializations, lecturers, research areas, and provide intelligent guidance to help you make informed academic decisions. How can I assist you today? Type help/menu to begin...</i>"
    }
  ]);

  const [input, setInput] = useState("");
  const [typing, setTyping] = useState(false);

  const chatEndRef = useRef(null);

  // Session ID that NEVER changes
  const sessionIdRef = useRef(uuidv4());

  useEffect(() => {
    chatEndRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages, typing]);

  const handleSend = async (e) => {
  if (e) e.preventDefault();
    if (!input.trim()) return;

    const userMessage = input;

    setMessages(prev => [
      ...prev,
      { from: "user", text: userMessage, time: getTime() }
    ]);

    setInput("");
    setTyping(true);

try {
  const res = await fetch(`${import.meta.env.VITE_API_URL}/chat`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      message: userMessage,
      sessionId: sessionIdRef.current
    })
  });

  const data = await res.json();
  console.log("Backend reply:", data);

  setTyping(false);

  setMessages(prev => [
    ...prev,
    { from: "bot", text: data.reply, time: getTime() }
  ]);

} catch (error) {
  setTyping(false);

  setMessages(prev => [
    ...prev,
    { from: "bot", text: "⚠️ Could not reach the backend.", time: getTime() }
  ]);
}
  };

  return (
    <div className="flex items-center justify-center min-h-screen bg-gradient-to-br from-indigo-500 via-purple-500 to-pink-500 p-6">

      <div className="w-full max-w-lg backdrop-blur-lg bg-white/30 border border-white/20 shadow-2xl rounded-3xl overflow-hidden">

        {/* HEADER */}
        <div className="flex items-center gap-3 bg-gradient-to-r from-indigo-600 to-purple-600 text-white px-4 py-3">

          <div className="w-10 h-10 flex items-center justify-center bg-white text-indigo-600 rounded-full text-lg font-bold">
            🤖
          </div>

          <div>
            <p className="text-xl font-bold tracking-wide">
              Systems Engineering (MSc.) Chatbot
            </p>

            <p className="text-sm text-green-300 font-semibold">
              ● Online
            </p>
          </div>

        </div>

        {/* DESCRIPTION */}
        <div className="text-center text-white font-semibold text-sm p-2">
          Expert Systems II • Built with Prolog, Python, Node.js & React
        </div>

        {/* CHAT AREA */}
        <div className="h-96 overflow-y-auto p-4 bg-white/40 space-y-3">

          {messages.map((msg, idx) => (
            <div
              key={idx}
              className={`flex animate-fade-in ${
                msg.from === "user" ? "justify-end" : "justify-start"
              }`}
            >

              {msg.from === "bot" && (
                <div className="mr-2 w-8 h-8 flex items-center justify-center bg-indigo-500 text-white rounded-full text-sm">
                  🤖
                </div>
              )}

              <div>

                <div
                  className={`px-4 py-2 rounded-2xl max-w-[260px] shadow ${
                    msg.from === "user"
                      ? "bg-gradient-to-r from-indigo-500 to-purple-500 text-white"
                      : "bg-white text-gray-800"
                  }`}
                  dangerouslySetInnerHTML={{
                  __html: (msg.text || "").replace(/\n/g, "<br/>")
                  }}
                ></div>

                <div className="text-xs text-gray-600 mt-1 text-right">
                  {msg.time}
                </div>

              </div>

              {msg.from === "user" && (
                <div className="ml-2 w-8 h-8 flex items-center justify-center bg-gray-500 text-white rounded-full text-sm">
                  👤
                </div>
              )}

            </div>
          ))}

          {typing && (
            <div className="flex items-center gap-2">

              <div className="w-8 h-8 flex items-center justify-center bg-indigo-500 text-white rounded-full text-sm">
                🤖
              </div>

              <div className="flex space-x-1 bg-white px-4 py-2 rounded-2xl shadow">
                <span className="w-2 h-2 bg-gray-500 rounded-full animate-bounce"></span>
                <span className="w-2 h-2 bg-gray-500 rounded-full animate-bounce delay-150"></span>
                <span className="w-2 h-2 bg-gray-500 rounded-full animate-bounce delay-300"></span>
              </div>

            </div>
          )}

          <div ref={chatEndRef}></div>

        </div>

        {/* INPUT */}
        <div className="flex items-center gap-2 p-3 bg-white/40">

          <input
            type="text"
            className="flex-1 px-4 py-2 rounded-full focus:outline-none shadow"
            value={input}
            onChange={(e) => setInput(e.target.value)}
            onKeyDown={(e) => {
  if (e.key === "Enter") {
    e.preventDefault();
    handleSend();
  }
}}
            placeholder="Ask the chatbot something..."
          />

<button
  type="button"
  onClick={handleSend}
  className="flex items-center justify-center w-12 h-12 bg-gradient-to-r from-indigo-500 to-purple-500 text-white rounded-full shadow-lg hover:scale-110 transition"
>
  🚀
</button>

        </div>

        {/* FOOTER */}
<div className="text-center text-xs text-white/70 mt-2">
  <b>SSG 816 Project • Prolog Expert System Chatbot</b>
</div>

      </div>

    </div>
  );
}