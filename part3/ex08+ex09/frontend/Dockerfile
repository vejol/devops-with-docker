FROM node:16-alpine AS build

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL http://localhost:80/api/

RUN npm install && npm run build


FROM nginx:1.19-alpine

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY --from=build /usr/src/app/build/ /usr/share/nginx/html
