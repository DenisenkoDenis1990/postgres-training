FROM postgres:15.2 as db
WORKDIR /app
COPY ./scripts/db/init.sh /docker-entrypoint-initdb.d
COPY ./scripts/db/dump.sql ./scripts/db/dump.sql
