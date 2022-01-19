FROM node:16-alpine as build

WORKDIR /apis

ENV PATH /apis/node_modules/.bin:$PATH

COPY ./package.json ./
COPY ./package-lock.json ./

RUN npm install --quiet

COPY . ./

EXPOSE 8081

CMD npm start

