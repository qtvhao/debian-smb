FROM ghcr.io/qtvhao/debian-minimum:main

RUN set -xe; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        samba-client \
        cifs-utils \
    ; \
    apt-get purge -y --auto-remove chromium; \
    apt-get autoremove -y; \
    apt-get autoclean -y; \
    apt-get clean -y; \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*; \
    rm -rf /tmp/* /var/tmp/*; rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*;

