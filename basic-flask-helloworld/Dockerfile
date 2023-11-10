# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# 231110 flask dependency issues
# https://stackoverflow.com/questions/77213053/importerror-cannot-import-name-url-quote-from-werkzeug-urls
# COPY requirements.txt /

# install app dependencies
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install flask

# install app
COPY hello-world-flask.py /

# final configuration
ENV FLASK_APP=hello-world-flask
EXPOSE 8000
CMD flask run --host 0.0.0.0 --port 8000
