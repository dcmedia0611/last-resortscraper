FROM python:3.11.8-slim

WORKDIR /app

RUN apt-get update && apt-get install -y ffmpeg git && apt-get clean

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]
