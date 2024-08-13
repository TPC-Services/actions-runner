FROM ghcr.io/actions/actions-runner:2.319.1
 
USER root

RUN apt-get update && \
    apt-get install -y unzip && \
    apt-get install -y buildah && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV BUILDAH_ISOLATION=chroot
ENV BUILDAH_LAYERS=true

USER runner
