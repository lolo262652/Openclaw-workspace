import requests
import sys

api_key = "K81878380888951"
image_path = sys.argv[1] if len(sys.argv) > 1 else r"C:\Users\vrlolo\.openclaw\media\inbound\file_2---d0f5b82a-9e9f-4bdb-aeb3-9390052d265b.jpg"

with open(image_path, "rb") as f:
    files = {"file": f}
    data = {"language": "eng"}
    response = requests.post(
        "https://api.ocr.space/parse/image",
        files=files,
        data=data,
        headers={"apikey": api_key}
    )

result = response.json()
print("--- Résultat OCR ---")
print(result)