from langchain_chroma import Chroma
from langchain_huggingface import HuggingFaceEmbeddings

DB_PATH = "vector_store"


def create_vector_store(chunks):

    embeddings = HuggingFaceEmbeddings(
        model_name="sentence-transformers/all-MiniLM-L6-v2"
    )

    vector_db = Chroma.from_texts(
        texts=chunks,
        embedding=embeddings,
        persist_directory=DB_PATH
    )

    return vector_db