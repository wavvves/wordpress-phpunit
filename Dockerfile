FROM phpunit/phpunit:6.0.6

RUN sed -i -e 's/v3\.8/v3.15/g' /etc/apk/repositories && \
    apk update --allow-untrusted && \
    apk upgrade --allow-untrusted && \
    apk add --allow-untrusted --no-cache mariadb-client php7-mysqli subversion wget bash php7

ENTRYPOINT []

CMD /bin/true
