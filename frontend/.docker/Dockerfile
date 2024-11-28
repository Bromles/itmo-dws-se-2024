FROM node:21.2-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm i

RUN npm run build

ENTRYPOINT npm run dev