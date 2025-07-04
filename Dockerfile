FROM ubuntu
RUN apt-get update && apt-get install -y tzdata
RUN apt-get -y install apache2
ADD index.html /var/www/html
ENTRYPOINT ["apachetl", ".D", "FOREGROUND"]
ENV name nirumani