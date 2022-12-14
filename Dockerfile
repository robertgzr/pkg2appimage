# Beware: only meant for use with pkg2appimage-with-docker

FROM debian:buster-slim

ENV DEBIAN_FRONTEND=noninteractive \
    DOCKER_BUILD=1

RUN set -ex; \
    apt-get update && \
    apt-get install -y \
        apt-transport-https \
        binutils \
        libglib2.0-bin \
        bsdtar \
        bzip2 \
        desktop-file-utils \
        dpkg \
        file \
        imagemagick \
        squashfs-tools \
        wget \
        xz-utils \
        zsync

RUN set -ex; \
    apt-get update && \
    apt-get install -y \
        unzip \
        jq \
        rpm2cpio cpio

WORKDIR /workspace
