FROM guacamole/guacamole
RUN /opt/guacamole/bin/initdb.sh --postgresql > /tmp/initdb.sql

FROM postgres:18
COPY --from=0 /tmp/initdb.sql /docker-entrypoint-initdb.d/initdb.sql
