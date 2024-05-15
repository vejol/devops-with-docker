FROM golang:1.16-alpine AS build

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

ENV PORT 8080
ENV REQUEST_ORIGIN http://localhost:5000

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build


FROM scratch

COPY --from=build /usr/src/app/server /server

ENTRYPOINT [ "./server" ]
