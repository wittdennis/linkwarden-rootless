FROM ghcr.io/linkwarden/linkwarden:v2.13.5

RUN npx playwright install-deps && npx playwright install &&\
    mv /root/.cache /home/node/ &&\
    mv /root/.yarn /home/node/ &&\
    mv /root/.npm /home/node/ &&\
    mv /root/.config /home/node/ &&\
    chown -R node:node /data

USER node
