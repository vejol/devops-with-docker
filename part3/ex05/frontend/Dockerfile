FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL http://localhost:80/api/

RUN npm install && npm run build && npm install -g serve

RUN addgroup usergroup && adduser --disabled-password appuser

USER appuser

CMD serve -s -l 5000 build