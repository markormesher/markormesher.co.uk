FROM busybox:1.36.1@sha256:82078ce09d47857439e17eb6a35b0c24ad5be8cde11f56f81c4e293029da727b
WORKDIR /app
COPY ./public/ ./public/
EXPOSE 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
