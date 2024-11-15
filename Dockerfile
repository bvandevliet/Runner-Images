ARG BASE_IMAGE_TAG

FROM node:${BASE_IMAGE_TAG}

ARG IMAGE_CREATED
ARG IMAGE_VERSION
ARG IMAGE_REVISION

LABEL org.opencontainers.image.created="${IMAGE_CREATED}" \
      org.opencontainers.image.authors="bvandevliet" \
      org.opencontainers.image.url="https://github.com/bvandevliet/runner-images" \
      org.opencontainers.image.documentation="https://github.com/bvandevliet/runner-images/blob/master/README.md" \
      org.opencontainers.image.source="https://github.com/bvandevliet/runner-images" \
      org.opencontainers.image.version="${IMAGE_VERSION}" \
      org.opencontainers.image.revision="${IMAGE_REVISION}" \
      org.opencontainers.image.vendor="bvandevliet" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.title="Gitea Actions runner images" \
      org.opencontainers.image.description="Docker images used by act_runner to run workflows."

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y --no-install-recommends \
    ca-certificates curl wget git git-lfs \
    && apt clean && rm -rf /var/lib/apt/lists/*