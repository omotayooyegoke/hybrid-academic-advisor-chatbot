import re


def expand_query(question):

    queries = [question]

    q = question.lower()

    # Course code expansion
    match = re.search(r"(ssg)\s*([0-9]{3})", q)

    if match:

        code = match.group(2)

        queries.extend([
            f"SSG {code}",
            f"Course SSG {code}",
            f"SSG{code}"
        ])

    # Engineering Analysis
    if "engineering analysis" in q:

        queries.extend([
            "Engineering Analysis specialization",
            "Engineering Analysis courses",
            "Engineering Analysis objectives",
            "Engineering Analysis focus"
        ])

    # Artificial Intelligence

    if "artificial intelligence" in q or "ai" in q:

        queries.extend([
            "Artificial Intelligence specialization",
            "Machine Learning",
            "Robotics",
            "Expert Systems"
        ])

    # Expert Systems

    if "expert" in q:

        queries.extend([
            "Knowledge Based Systems",
            "Prolog",
            "Engineering Applications",
            "Artificial Intelligence"
        ])

    return " ".join(queries)