# Dockerfile
FROM python:3.11-slim
WORKDIR /app

# No dependencies required for simple "hello world"
COPY . .

CMD ["python", "program.py"]
