import os

from dotenv import load_dotenv
from langchain_groq import ChatGroq

from utils.search import search_handbook
from prompt import SYSTEM_PROMPT

load_dotenv()

llm = ChatGroq(
    model=os.getenv("GROQ_MODEL"),
    temperature=0
)


def ask(question):

    handbook = search_handbook(question)

    prompt = f"""
{SYSTEM_PROMPT}

HANDBOOK:

{handbook}

QUESTION:

{question}

ANSWER:
"""

    response = llm.invoke(prompt)

    return response.content