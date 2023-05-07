FROM node:10-alpine as build

RUN mkdir app
COPY . ./app/

WORKDIR /app

COPY package.json /app
RUN npm install
COPY . /app

ENV AMQP_URI=http://localhost:5672
ENV ELASTICSEARCH_URI=http://localhost
CMD npm run start
