FROM nginx

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./includes/ /etc/nginx/includes/


EXPOSE 80



CMD ["nginx", "-g", "daemon off;"]
