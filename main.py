from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"status": 200}

@app.get("/health")
async def health():
    print("health check from report")
    return {"status": 200}