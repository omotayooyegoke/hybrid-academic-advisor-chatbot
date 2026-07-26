from flask import Flask, request, jsonify
import os
from chatbot import ask

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify({
        "status": "running",
        "service": "MSc Systems Engineering AI Server"
    })


@app.route("/ask", methods=["POST"])
def ask_ai():

    data = request.get_json()

    question = data.get("question", "").strip()

    if question == "":
        return jsonify({
            "answer": "Please ask a question."
        })

    answer = ask(question)

    answer = (
        "🤖 <b>MSc Systems Engineering AI Assistant</b><br><br>"
        + answer
    )

    return jsonify({
        "answer": answer
    })


if __name__ == "__main__":

    port = int(os.environ.get("PORT", 8000))

    print("===================================")
    print(" MSc Systems Engineering AI Server")
    print("===================================")
    print(f"Running on port {port}")
    print()

    app.run(
        host="0.0.0.0",
        port=port,
        debug=False
    )