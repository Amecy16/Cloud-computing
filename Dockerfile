FROM python:3.14-alpine

WORKDIR /app

COPY . .

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]
