FROM ghcr.io/linkwarden/linkwarden:v2.15.1

# Upstream now installs Playwright into /ms-playwright (world-readable) via
# PLAYWRIGHT_BROWSERS_PATH, so only /data needs to be writable by the node user.
RUN chown -R node:node /data

USER node
