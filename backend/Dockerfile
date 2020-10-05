FROM python:3.7
WORKDIR /app
COPY requirements.txt /app
RUN pip install Flask
COPY . .
ENTRYPOINT ["python3", "app.py"]
