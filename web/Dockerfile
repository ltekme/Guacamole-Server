FROM alpine
RUN apk add openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /tmp/nginx.key -out /tmp/nginx.crt -subj "/O=GuacamoleServer"

FROM nginx
COPY --from=0 /tmp/nginx.key /etc/nginx/
COPY --from=0 /tmp/nginx.crt /etc/nginx/
COPY nginx.conf /etc/nginx/
