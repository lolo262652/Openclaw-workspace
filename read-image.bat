@echo off
curl -X POST "https://api.ocr.space/parse/image" -H "apikey: K81878380888951" -F "file@%~1" -F "language=fra"