FROM busybox:1.36.1@sha256:5c63a9b46e7139d2d5841462859edcbbf57f238af891b6096578e5894cfe5ae2
WORKDIR /app
COPY ./public/ ./public/
EXPOSE 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
