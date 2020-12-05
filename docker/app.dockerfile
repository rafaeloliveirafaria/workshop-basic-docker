FROM node:latest
RUN mkdir /var/www
WORKDIR /var/www

#environment
ENV PORT=3001

ENV PGUSER=postgres
ENV PGHOST=postgres-core
ENV PGDATABASE=docker-teste
ENV PGPASSWORD=1020
ENV PGPORT=5432
#environment

RUN apt-get update & apt-get install -y git
RUN apt-get update

RUN npm install -g nodemon

RUN npm install
ENTRYPOINT npm run server
EXPOSE 3001
