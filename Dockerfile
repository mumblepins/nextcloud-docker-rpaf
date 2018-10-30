FROM nextcloud:apache

RUN set -ex; \
    apt-get update; \
    apt-get install libapache2-mod-rpaf; \
    rm -rf /var/lib/apt/lists/*; \
    a2enmod rpaf

COPY rpaf.conf /etc/apache2/mods-available/rpaf.conf
COPY remoteip.conf /etc/apache2/conf-enabled/remoteip.conf

