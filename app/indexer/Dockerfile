FROM node:10-alpine as build

RUN mkdir app
COPY . ./app/

WORKDIR /app

COPY package.json /app
RUN npm install
COPY . /app

CMD npm run start
