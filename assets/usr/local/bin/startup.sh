#!/bin/sh
set -e

sed -i 's/$SERVER_NAME/'"$DOMAIN"'/g' /etc/apache2/sites-available/000-default.conf
sed -i 's/$DOMAIN/'"$DOMAIN"'/g' /var/www/html/mapdemo/index.html
sed -i 's/$MOD_TILE_TILESET_NAME/'"$MOD_TILE_TILESET_NAME"'/g' /etc/apache2/mods-available/tile.conf

apachectl -DFOREGROUND
