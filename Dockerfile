FROM busybox:1.36.1@sha256:6776a33c72b3af7582a5b301e3a08186f2c21a3409f0d2b52dfddbdbe24a5b04
WORKDIR /app
COPY ./public/ ./public/
EXPOSE 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
