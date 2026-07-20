# linkwarden-rootless

> [!WARNING]
> **Deprecated / no longer needed — this repo will be archived.**
>
> Upstream `ghcr.io/linkwarden/linkwarden` now bakes Playwright browsers into the
> image at build time (`PLAYWRIGHT_BROWSERS_PATH=/ms-playwright`). The runtime
> `playwright install` that used to crash-loop under a rootless, read-only
> filesystem is gone, so the stock image runs rootless + read-only as-is.
>
> Run the stock image with a `runAsNonRoot` / `readOnlyRootFilesystem`
> securityContext and writable mounts at `/data/data`, `/data/apps/web/.next/cache`
> and `/tmp`.

Custom image of linkwarden that bakes in playwright install so that the container can run in rootless mode.

**WARNING: Resulting image is very large**
