FROM postgres:latest
COPY /docker/database/default.sql /docker-entrypoint-initdb.d/
EXPOSE 5432