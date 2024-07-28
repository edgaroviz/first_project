FROM python:3-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80

ENTRYPOINT ["python3", "counter-service.py"]
