FROM ghcr.io/linkwarden/linkwarden:v2.13.5

RUN set -eux; \
    groupadd -g 1001 linkwarden; \
    useradd -u 1001 -g 1001 -s /bin/sh -m -b /home/linkwarden linkwarden

RUN npx playwright install-deps && npx playwright install &&\
    mv /root/.cache /home/linkwarden/linkwarden/ &&\
    mv /root/.yarn /home/linkwarden/linkwarden/ &&\
    mv /root/.npm /home/linkwarden/linkwarden/ &&\
    mv /root/.config /home/linkwarden/linkwarden/ &&\
    chown -R linkwarden:linkwarden /home/linkwarden &&\
    chown -R linkwarden:linkwarden /data

USER linkwarden
