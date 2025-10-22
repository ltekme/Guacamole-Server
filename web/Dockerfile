FROM nginx:mainline-alpine
RUN apk add --no-cache openssl

COPY nginx.conf /etc/nginx/

COPY init.sh /cert_init.sh
RUN chmod +x /cert_init.sh

ENTRYPOINT ["/cert_init.sh"]