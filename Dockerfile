FROM python:3.8.2-alpine3.11

ADD https://chromedriver.storage.googleapis.com/83.0.4103.14/chromedriver_linux64.zip /tmp

RUN apk update && \
    apk upgrade && \
    apk add --no-cache git &&\
    # Unzip chromedriver
    unzip /tmp/chromedriver_linux64.zip -d /usr/local/bin && \
    rm /tmp/chromedriver_linux64.zip && \
    # Setup google-images-download
    git clone https://github.com/Joeclinton1/google-images-download.git /tmp/google-images-download &&\
    cd /tmp/google-images-download &&\
    python setup.py install &&\
    rm -rf /tmp/google-images-download

WORKDIR /googleimagesdownload
