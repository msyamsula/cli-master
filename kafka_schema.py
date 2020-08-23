import requests
schemas = [
    "anjing-value",
    "source_trx-value",
    "source_trx-key",
    "pending_trx-value",
    "PENDING_TRX_3-value",
    "pending_trx_2-value"
]

host = "http://localhost:8081/subjects"

for schema in schemas:
    url = f"{host}/{schema}"
    resp = requests.delete(url)

    print(resp.status_code)
    print(resp.json())