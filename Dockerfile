FROM ubuntu/apache2:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL=en_US.UTF-8
ENV DOMAIN=localhost
ENV MOD_TILE_TILESET_NAME=opentopomap

RUN rm -f /etc/apache2/sites-available/*
COPY assets /
RUN apt update && apt install -y libapache2-mod-tile
RUN a2dismod mpm_event && a2enmod mpm_prefork headers tile
RUN mkdir /tiles && ln -s /tiles /var/lib/mod_tile

CMD []
ENTRYPOINT ["/usr/local/bin/startup.sh"]
