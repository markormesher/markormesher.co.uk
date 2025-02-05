FROM docker.io/library/httpd:2.4.63@sha256:7403dba12dd0cd4787ecb367c1eed248e0177f7613767acfc4e6a4906a85da7d
WORKDIR /app

COPY ./public/ ./public/

EXPOSE 3000
CMD ["httpd", "-f", "-v", "-p", "3000", "-h", "/app/public"]
