import os

import psycopg2


def test_connection():
    conn = psycopg2.connect(
        host="localhost",
        database=os.environ.get("POSTGRES_DB"),
        user=os.environ.get("POSTGRES_USER"),
        password=os.environ.get("POSTGRES_PASSWORD"),
        port=5432,
    )
    conn.close()
    print("Connection test passed.")


if __name__ == "__main__":
    test_connection()
