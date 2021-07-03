FROM node:14-alpine

WORKDIR "/app"

COPY package*.json ./

RUN apk add --no-cache --update --virtual .build-dependencies git make gcc g++ python \
    && npm install \
    && apk del .build-dependencies

COPY lib/* .

VOLUME ["/data"]

EXPOSE 3080

CMD ["node", "cli.js", "-b", "false", "-a", "0.0.0.0", "-p", "3080", "/data"