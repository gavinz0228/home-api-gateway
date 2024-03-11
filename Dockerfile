FROM nginx


RUN mkdir /etc/nginx/sites-available/

COPY ./api-gateway.conf /etc/nginx/sites-available/api_gateway.conf
COPY ./api-gateway.conf etc/nginx/conf.d/api-gateway.conf

COPY ./nginx.conf /etc/nginx/nginx.conf
#RUN ln -s /etc/nginx/sites-available/api_gateway.conf /etc/nginx/sites-enabled


#CMD systemctl restart nginx

EXPOSE 80