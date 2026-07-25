from utils.query_expander import expand_query
from langchain_chroma import Chroma
from langchain_huggingface import HuggingFaceEmbeddings

DB_PATH = "vector_store"

embeddings = HuggingFaceEmbeddings(
    model_name="sentence-transformers/all-MiniLM-L6-v2"
)


def search_handbook(question, k=8):

    db = Chroma(
        persist_directory=DB_PATH,
        embedding_function=embeddings
    )

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