FROM node: 16-slim as BUILDER
LABEL mantainer="Marcelo Mattos"

WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm Install

COPY src ./src
FROM node:16-alpine

ARG NODE_ENV

WORKDIR /usr/src/app

COPY --from=BUILDER /usr/src/app ./

EXPOSE 3000

CMD { "npm", "start" }