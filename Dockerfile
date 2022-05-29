FROM node:lts-alpine

WORKDIR /app
COPY dist/apps/app .

RUN npm i -g http-server

EXPOSE 8080
CMD [ "http-server", "app" ]
