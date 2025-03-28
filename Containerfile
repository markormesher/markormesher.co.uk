FROM docker.io/joseluisq/static-web-server:2.36.0@sha256:cd05aebc1d8e0c6aa53629b34dce482094f0d7a84a0633669c1894e31896e02b
WORKDIR /app

COPY ./public/ ./public/

LABEL image.registry=ghcr.io
LABEL image.name=markormesher/markormesher.co.uk

CMD ["--host", "0.0.0.0", "--port", "3000", "--root", "/app/public"]
