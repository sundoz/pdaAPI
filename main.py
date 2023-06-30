from fastapi import FastAPI
from fastapi.responses import HTMLResponse
app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/pda")
async def pda():
    """Personal data agrement"""
    with open('main.html', 'r') as page:
        return HTMLResponse(content = page.read(), status_code=200)