FROM node:8.15.0-alpine

RUN mkdir /app

WORKDIR /app

RUN npm i -g typescript ts-node

COPY . .

RUN rm -Rf node_modules

RUN npm install



CMD ["ts-node", "index.ts"]
