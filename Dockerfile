FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html style.css images/ /var/web/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
