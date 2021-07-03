FROM node:14-alpine

RUN apk add --no-cache --update --virtual .build-dependencies git make gcc g++ python \
    && npm --ws:verbose install markserv -g \
    && apk del .build-dependencies
    

VOLUME ["/data"]
WORKDIR "/data"

EXPOSE 3080

CMD ["markserv", "-b", "false", "-a", "0.0.0.0", "-p", "3080"