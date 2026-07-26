from utils.query_expander import expand_query
from langchain_chroma import Chroma
from langchain_huggingface import HuggingFaceEmbeddings

DB_PATH = "vector_store"

_embeddings = None
_db = None


def get_db():
    global _embeddings, _db

    if _embeddings is None:
        _embeddings = HuggingFaceEmbeddings(
            model_name="sentence-transformers/all-MiniLM-L6-v2"
        )

    if _db is None:
        _db = Chroma(
            persist_directory=DB_PATH,
            embedding_function=_embeddings
        )

    return _db


def search_handbook(question, k=8):

    db = get_db()

    retriever = db.as_retriever(
        search_type="mmr",
        search_kwargs={
            "k": k,
            "fetch_k": 20,
            "lambda_mult": 0.5
        }
    )

    expanded = expand_query(question)

    docs = retriever.invoke(expanded)

    context = "\n\n----------------------\n\n".join(
        doc.page_content for doc in docs
    )

    return context