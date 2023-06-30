FROM python:3.11

WORKDIR /pda

COPY main.py .
COPY main.html .

COPY requirements.txt .

RUN pip install -r requirements.txt
