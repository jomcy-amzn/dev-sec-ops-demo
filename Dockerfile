# syntax=docker/dockerfile:1
 FROM node:14.20.1-alpine3.15
 RUN apk add --no-cache python3 g++ make
 WORKDIR /app
 COPY . .
 RUN yarn install --production
 CMD ["node", "src/index.js"]