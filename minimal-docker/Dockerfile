FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80:80
CMD ["nginx", "-g", "daemon on;"]
VOLUME ["/vagrant:/usr/share/nginx/html"]
VOLUME ["/var/log/docker:/var/log"]
