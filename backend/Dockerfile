# Dockerfile
FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY src/ src/

ENV FLASK_APP=src.app

CMD ["flask", "run", "--host=0.0.0.0"]
