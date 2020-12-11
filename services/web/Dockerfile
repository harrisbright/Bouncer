FROM python:3.8
ENV PYTHONUNBUFFERED=1
WORKDIR usr/src/web
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV FLASK_APP=app
ENV FLASK_ENV=development
CMD flask run --host=0.0.0.0
