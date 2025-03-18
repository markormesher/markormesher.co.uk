FROM docker.io/library/httpd:2.4.63@sha256:a5057bba775400702c6c33170762e0faf4051c344f98952fe045df50042ece9a
WORKDIR /app

COPY ./public/ ./public/

EXPOSE 3000
CMD ["httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
