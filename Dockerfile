FROM paketobuildpacks/run-jammy-base

USER root
RUN  --mount=type=cache,target=/var/cache/apt --mount=type=cache,target=/var/lib/apt \
    apt-get update && \
    echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | \
    debconf-set-selections && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends ttf-mscorefonts-installer fontconfig && fc-cache -f -v
USER cnb
