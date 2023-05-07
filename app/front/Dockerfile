FROM node:10-alpine as build

RUN mkdir app
COPY . ./app/

WORKDIR /app

COPY package.json /app
RUN npm install
COPY . /app

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

RUN npm run build --prod


# ENTRYPOINT ["tail", "-f", "/dev/null"]
FROM nginx:alpine
COPY --from=build /app/dist/front /usr/share/nginx/html
EXPOSE 80