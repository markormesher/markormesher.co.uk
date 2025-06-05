FROM docker.io/joseluisq/static-web-server:2.37.0@sha256:d12a79afb947acbf2f541d448308fdfdc244cdb9812a80165078673d7e4ed6d8
WORKDIR /app

COPY ./public/ ./public/

LABEL image.registry=ghcr.io
LABEL image.name=markormesher/markormesher.co.uk

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]
