FROM alpine

RUN mkdir /app
WORKDIR /app

RUN apk add bash curl git nodejs yarn
RUN curl https://cli-assets.heroku.com/install.sh | sh

