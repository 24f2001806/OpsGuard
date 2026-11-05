# Backend (FastAPI) — Owner: Member 1

Run locally:

```bash
cd backend
python -m venv venv
venv\Scripts\activate        # Windows
# source venv/bin/activate   # Linux/macOS
pip install -r requirements.txt
cp .env.example .env         # then edit values
uvicorn app.main:app --reload
```

Health check: http://localhost:8000/health
Docs: http://localhost:8000/docs
