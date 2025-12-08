FROM docker.io/joseluisq/static-web-server:2.40.1@sha256:63528bfba5d86b00572e23b4e44ed0f7a791f931df650125156d0c24f7a8f877
WORKDIR /app

COPY ./public/ ./public/

LABEL image.registry=ghcr.io
LABEL image.name=markormesher/markormesher.co.uk

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]
