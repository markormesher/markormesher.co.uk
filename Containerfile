FROM docker.io/library/httpd:2.4.62@sha256:3f411b6f7d1ae32ab7bfc26f98133c8e601cdcca684a9c16e6f146463cbacb76
WORKDIR /app

COPY ./public/ ./public/

EXPOSE 3000
CMD ["httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
