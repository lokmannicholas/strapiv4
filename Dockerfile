FROM node:16-alpine

WORKDIR /app
RUN apk add curl
RUN apk add --no-cache git

RUN npm config set unsafe-perm true
RUN npm install -g npm@latest

COPY package*.json ./
RUN npm install


COPY . .

EXPOSE 3000

CMD npm run start