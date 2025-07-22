FROM docker.io/joseluisq/static-web-server:2.38.0@sha256:acfb7d76452f9746c5d2f8d791c9b659ac277b2b63fcac3ad97276fcdc969ffc
WORKDIR /app

COPY ./public/ ./public/

LABEL image.registry=ghcr.io
LABEL image.name=markormesher/markormesher.co.uk

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]
