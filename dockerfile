FROM python:3.10
WORKDIR /app

COPY ./app/requirements.txt ./requirements.txt

RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r requirements.txt

CMD ["python", "-u", "main.py"]
