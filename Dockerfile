FROM paketobuildpacks/build-jammy-tiny

USER root
RUN apt-get update && \
    echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | \
    debconf-set-selections && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends ttf-mscorefonts-installer fontconfig && fc-cache -f -v
USER cnb
