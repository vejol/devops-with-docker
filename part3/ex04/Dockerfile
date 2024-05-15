FROM docker:26.1.1-cli-alpine3.19

WORKDIR /usr/src/app

RUN apk update && apk add git

COPY ./builder.sh .

ENTRYPOINT ["sh", "builder.sh"]
