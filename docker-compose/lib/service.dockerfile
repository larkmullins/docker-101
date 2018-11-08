FROM node:alpine
LABEL maintainer="Apiture Engineering"

ENV NODE_ENV=development

WORKDIR /usr/src/app

RUN npm install

EXPOSE 8080

ENTRYPOINT [ "npm", "run" ]
CMD [ "devel" ]