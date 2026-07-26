# Hybrid Intelligent Academic Advisory Chatbot

![GitHub last commit](https://img.shields.io/github/last-commit/omotayooyegoke/hybrid-academic-advisor-chatbot)
![GitHub repo size](https://img.shields.io/github/repo-size/omotayooyegoke/hybrid-academic-advisor-chatbot)
![GitHub language count](https://img.shields.io/github/languages/count/omotayooyegoke/hybrid-academic-advisor-chatbot)
![GitHub top language](https://img.shields.io/github/languages/top/omotayooyegoke/hybrid-academic-advisor-chatbot)

A **Hybrid Intelligent Academic Advisory Chatbot** developed as an SSG 816 (Expert Systems II) course project within the MSc Systems Engineering curriculum at the **University of Lagos**. The system combines **symbolic AI (Prolog Expert Systems)** with **Large Language Models (LLMs)** and **Retrieval-Augmented Generation (RAG)** to provide accurate, explainable, and context-aware academic advisory services.

Unlike conventional chatbots that rely solely on either rule-based reasoning or generative AI, this system intelligently routes user queries to the most appropriate reasoning engine, ensuring both reliability and flexibility.

---

# Project Overview

The chatbot assists prospective and current MSc Systems Engineering students by answering questions about:

- Admission requirements
- Programme structure
- Specializations
- Courses
- Lecturers
- Research areas
- Graduation requirements
- Course recommendations
- Academic guidance

The system employs an intelligent routing mechanism that determines whether a query should be handled by the Prolog Expert System or by an AI-powered Retrieval-Augmented Generation (RAG) service.

---

# Key Features

- Hybrid AI architecture
- Prolog Expert System reasoning
- Large Language Model integration
- Retrieval-Augmented Generation (RAG)
- Intelligent query routing
- Explainable AI responses
- Modular knowledge base
- Context-aware conversations
- Course recommendation engine
- Research recommendation engine
- Lecturer information retrieval
- Academic programme guidance

---

# System Architecture

```
                        User
                          │
                          ▼
                  React Frontend
                          │
                          ▼
                Node.js Middleware
                          │
                Intelligent Router
                ┌─────────┴─────────┐
                ▼                   ▼
        SWI-Prolog             Python AI Service
       Expert System      (LLM + LangChain + RAG)
                └─────────┬─────────┘
                          ▼
                  Response Formatter
                          ▼
                          User
```

---

# Technology Stack

## Frontend

- React
- Vite
- CSS

## Backend

- Node.js
- Express.js

## Expert System

- SWI-Prolog

## Artificial Intelligence

- Python
- Flask
- LangChain
- Groq LLM
- ChromaDB

## Knowledge Source

- MSc Systems Engineering Programme Handbook

---

# Project Structure

```
hybrid-academic-advisor-chatbot
│
├── src/
├── public/
├── backend/
│   ├── knowledge/
│   ├── queries/
│   ├── python_ai/
│   ├── utilities/
│   ├── academic_advisor.pl
│   ├── chatbot.pl
│   └── server.js
│
├── package.json
└── README.md
```

---

# How It Works

1. The user submits a question through the React interface.

2. The Node.js middleware analyses the query.

3. The intelligent routing module determines whether the query requires:

- Rule-based reasoning using the Prolog Expert System, or
- AI reasoning using the Python RAG service.

4. The selected reasoning engine processes the query.

5. The response is formatted and returned to the user.

---

# Installation

## Clone the repository

```bash
git clone https://github.com/omotayooyegoke/hybrid-academic-advisor-chatbot.git
```

```bash
cd hybrid-academic-advisor-chatbot
```

---

## Install Frontend Dependencies

```bash
npm install
```

---

## Install Backend Dependencies

```bash
cd backend
npm install
```

---

## Install Python Dependencies

```bash
cd python_ai
pip install -r requirements.txt
```

---

# Running the Application

### Start the Python AI Service

```bash
python app.py
```

### Start the Node.js Backend

```bash
node server.js
```

### Start the React Frontend

```bash
npm run dev
```

---

# Example Queries

Example questions supported by the chatbot include:

- What specializations are available?
- Tell me about Artificial Intelligence.
- Who teaches SSG816?
- Recommend a specialization for machine learning.
- What are the graduation requirements?
- What courses are available in Engineering Analysis?
- Tell me about the MSc programme.
- Which lecturer supervises machine learning research?

---

# Screenshots


## Home Page

![Home Page](docs/Screenshots/home-page.png)

---

## Expert System Response

![Expert System](docs/Screenshots/expert-system-response1.png)

---

## AI Response

![AI Response](docs/Screenshots/ai-response1.png)

---

## Recommendation Response

![Recommendation](docs/Screenshots/course-recommendation.png)

---

# Future Improvements

Future work includes:

- Expanding the knowledge base
- Supporting multiple academic programmes
- Improving natural language understanding
- Mobile application development
- Voice-based interaction
- Integration with university information systems

---

# Author

**Omotayo Philip Oyegoke**

MSc Systems Engineering (Artificial Intelligence Option)

University of Lagos

---

# Acknowledgement

This project was developed as a required course project for SSG 816 (Expert Systems II) within the Master of Science (MSc) Systems Engineering curriculum at the University of Lagos.

---

# License

This project is intended for academic and research purposes.