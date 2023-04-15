FROM python:3.10

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

EXPOSE 8000 2222

CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0","app:app"]