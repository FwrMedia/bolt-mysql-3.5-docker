FROM rossriley/docker-bolt:mysql-3.5

RUN rm -rf /var/www/html/app/config && rm -rf /var/www/html/extensions && rm -rf /var/www/html/public && rm -rf var/www/html/src

COPY app/config/ /var/www/html/app/config/
COPY environment_configs/development/config_local.yml /var/www/html/app/config/config_local.yml
COPY extensions/ /var/www/html/extensions/
COPY public/ /var/www/html/public/
COPY src/ /var/www/html/src/

EXPOSE 80