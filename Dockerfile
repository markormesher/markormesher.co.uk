FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html style.css /var/web/html/
COPY images/ /var/web/html/images/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
