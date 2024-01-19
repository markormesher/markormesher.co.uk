FROM busybox:1.36.1@sha256:3d3698b745b0c67ddf2c515650b42955b0bcd123c92060008aae4f4aac1c77b3
WORKDIR /app
COPY ./public/ ./public/
EXPOSE 3000
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
