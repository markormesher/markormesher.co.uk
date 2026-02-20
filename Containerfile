FROM docker.io/joseluisq/static-web-server:2.41.0@sha256:34bb160fd62d2145dabd0598f36352653ec58cf80a8d58c8cd2617097d34564d
WORKDIR /app

COPY ./public/ ./public/

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]

LABEL image.name=markormesher/markormesher.co.uk
LABEL image.registry=ghcr.io
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.documentation=""
LABEL org.opencontainers.image.title="markormesher.co.uk"
LABEL org.opencontainers.image.url="https://github.com/markormesher/markormesher.co.uk"
LABEL org.opencontainers.image.vendor=""
LABEL org.opencontainers.image.version=""
