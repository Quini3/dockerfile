FROM nginx:latest
RUN sed -i 's/nginx/quiny/g' /usr/share/nginx/html/index.html
EXPOSE 80