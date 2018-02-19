FROM wordpress:latest

ENV WOOCOMMERCE_VERSION 2.6.1
ENV WOOCOMMERCE_UPSTREAM_VERSION 2.6.1

RUN apt-get update
RUN apt-get install -y --no-install-recommends unzip wget

RUN curl -L https://github.com/wp-cli/wp-cli/releases/download/v0.24.1/wp-cli-0.24.1.phar -o /usr/local/bin/wp \
    && chmod +x /usr/local/bin/wp
RUN wget https://downloads.wordpress.org/plugin/woocommerce.${WOOCOMMERCE_VERSION}.zip -O /tmp/temp.zip \
    && cd /usr/src/wordpress/wp-content/plugins \
    && unzip /tmp/temp.zip \
    && rm /tmp/temp.zip
