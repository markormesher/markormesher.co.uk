FROM busybox:1.36.1@sha256:82742949a3709938cbeb9cec79f5eaf3e48b255389f2dcedf2de29ef96fd841c
WORKDIR /app
COPY ./public/ ./public/
EXPOSE 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
