FROM python:3.8-slim-buster

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /app
COPY source/ .

EXPOSE 8051

CMD ["python3", "-m" , "streamlit", "run", "--server.address=0.0.0.0", "app.py"]
