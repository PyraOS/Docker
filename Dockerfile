FROM arm32v7/debian

RUN apt-get update && \
    apt-get install -y \
    util-linux \
    debootstrap \
    systemd-container \
    pv \
    initramfs-tools-core \
    curl \
    zstd \
    fdisk && \
    # Clean up to reduce the image size
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*