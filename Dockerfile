# syntax=docker/dockerfile:1

FROM python:3.13-slim

WORKDIR /app

COPY ./source-repo/Server/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY ./source-repo/Server/. .

EXPOSE 3030
VOLUME /app/keys

CMD [ "python3", "index.py"]
