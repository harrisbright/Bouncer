FROM python:3.8
ENV PYTHONUNBUFFERED=1
WORKDIR usr/src/web
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
