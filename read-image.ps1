# Script lecture image avec OCR.space (version curl)
param(
    [Parameter(Mandatory=$true)]
    [string]$ImagePath,
    [string]$ApiKey = "K81878380888951"
)

$output = curl -X POST "https://api.ocr.space/parse/image" `
    -H "apikey: $ApiKey" `
    -F "file=@$ImagePath" `
    -F "language=fre"

$json = $output | ConvertFrom-Json

Write-Host "--- Résultat OCR ---"
$json.ParsedResults.Text