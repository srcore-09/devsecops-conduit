Set-Location -Path "backend"
python -m pip install -r requirements.txt
if (-not (Test-Path ".env")) { Copy-Item .env.example .env }
python -m uvicorn conduit.app:app --reload
