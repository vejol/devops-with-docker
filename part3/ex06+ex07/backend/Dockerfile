FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

ENV PORT 8080
ENV REQUEST_ORIGIN http://localhost:5000

RUN go build && \
  addgroup usergroup && \
  adduser --disabled-password appuser

USER appuser

CMD ./server