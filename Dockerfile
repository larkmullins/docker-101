FROM node:alpine
LABEL maintainer="Apiture Engineering"

WORKDIR /usr/src/app

COPY src/package*.json ./

ENV NODE_ENV=production

RUN npm install

COPY ./src .

EXPOSE 8080

ENTRYPOINT [ "npm", "run" ]
CMD [ "start" ]