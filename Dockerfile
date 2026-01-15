FROM ghcr.io/linkwarden/linkwarden:v2.13.5

RUN set -eux; \
    groupadd -g 1001 linkwarden; \
    useradd -u 1001 -g 1001 -s /bin/sh -m -b /home/linkwarden linkwarden

RUN npx playwright install-deps && npx playwright install &&\
    mv /root/.cache /home/linkwarden/ &&\
    mv /root/.yarn /home/linkwarden/ &&\
    mv /root/.npm /home/linkwarden/ &&\
    mv /root/.config /home/linkwarden/ &&\
    chown -R linkwarden:linkwarden /home/linkwarden &&\
    chown -R linkwarden:linkwarden /data &&\
    ls -la /home &&\
    ls -la /data

USER linkwarden
