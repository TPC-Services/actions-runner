FROM ghcr.io/actions/actions-runner:2.317.0
 
USER root

RUN apt-get update && \
    apt-get install -y buildah && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
 
USER runner
