from flask import Flask, request, jsonify
from chatbot import ask

app = Flask(__name__)


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

    print("===================================")
    print(" MSc Systems Engineering AI Server")
    print("===================================")
    print("Running on http://localhost:8000")
    print()

    app.run(
        host="0.0.0.0",
        port=8000,
        debug=False
    )