FROM node:lts-alpine3.10 as builder
WORKDIR /app/builder
COPY . .
RUN apk add --no-cache python3 py3-pip
RUN apk add --update make
RUN apk add build-base
RUN apk add --no-cache git

RUN npm i