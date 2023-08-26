
FROM node:latest as node

RUN mkdir -p /usr/src/app

WORKDIR usr/src/app

COPY package.json /usr/src/app

RUN npm install -g @angular/cli

COPY . /usr/src/app

EXPOSE 4200

ENV PATH="/usr/src/app/node_modules/.bin:$PATH"

CMD ng serve --host 0.0.0.0

