FROM php:7.4-cli

LABEL version="1.0"
LABEL repository="https://github.com/maddy2101/actions-phplint"
LABEL homepage="https://github.com/maddy2101/actions-lint"
LABEL maintainer="Anja Leichsenring <aleichsenring@ab-softlab.de>"

RUN apt-get update && apt-get -y install zip unzip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"

RUN mv composer.phar /usr/local/bin/composer

RUN mkdir /phplint && cd /phplint && composer require overtrue/phplint && ln -s /phplint/vendor/bin/phplint /usr/local/bin/phplint

COPY "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]