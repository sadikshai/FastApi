FROM python:3.12.7-alpine
LABEL author="sadik"
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]