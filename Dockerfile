FROM python:3.11

WORKDIR /pda

COPY main.py .
COPY main.html .

COPY requirements.txt .

RUN pip install -r requirements.txt

# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]