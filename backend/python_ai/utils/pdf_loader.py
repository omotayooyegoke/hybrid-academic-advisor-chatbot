from pypdf import PdfReader

PDF_PATH = "handbook/MSc_Systems_Engineering_Handbook.pdf"


def load_handbook():

    reader = PdfReader(PDF_PATH)

    print(f"Number of pages: {len(reader.pages)}")

    text = ""

    for page in reader.pages:

        page_text = page.extract_text()

        if page_text:
            text += page_text + "\n"

    return text