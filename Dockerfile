FROM python:3
COPY requirements.txt .
RUN pip install --requirement requirements.txt
RUN mkdir /app
WORKDIR /app
COPY src/* /app/
ENTRYPOINT [ "python", "/app/main.py" ]