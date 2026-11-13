FROM docker.io/joseluisq/static-web-server:2.44.2@sha256:23be6c04d474979d6e738081918f5874f88502a150d1123fd000719101a0f05c
WORKDIR /app

COPY ./public/ ./public/

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]

LABEL image.name=markormesher/markormesher.co.uk
LABEL image.registry=ghcr.io
LABEL org.opencontainers.image.description=""
LABEL org.opencontainers.image.documentation=""
LABEL org.opencontainers.image.title="markormesher.co.uk"
LABEL org.opencontainers.image.url=""
LABEL org.opencontainers.image.vendor=""
LABEL org.opencontainers.image.version=""
