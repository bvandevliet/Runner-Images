# Runner Images
Clean and slim Gitea Actions runner images

This repo contains the Dockerfiles and Github Actions to build Gitea Actions runner images.  
The build process is based on the [official slim Github Actions runner images](https://gitea.com/gitea/runner-images#slim-images),  
but with some modifications to support the latest Node.js version and for better Git compatibility.  

### Slim images

Slim images are based on `node:*-slim`.  
They contain Node.js to run basic workflows and set up more development tools if needed.  
Their size is much smaller, which is friendly to disk-space constrained runners.  

| Tag | Base | Size | Example label |
| --- | ---- | ---- | ------------- |
| [20-bullseye-slim](https://hub.docker.com/r/bvandevliet/runner-images/tags?name=20-bullseye-slim&ordering=-name) | `node:20-bullseye-slim` | ![size](https://img.shields.io/docker/image-size/bvandevliet/runner-images/20-bullseye-slim?label=size) | `ubuntu-20.04:docker://bvandevliet/runner-images:20-bullseye-slim` |
| [22-bullseye-slim](https://hub.docker.com/r/bvandevliet/runner-images/tags?name=22-bullseye-slim&ordering=-name) | `node:22-bullseye-slim` | ![size](https://img.shields.io/docker/image-size/bvandevliet/runner-images/22-bullseye-slim?label=size) | `ubuntu-20.04:docker://bvandevliet/runner-images:22-bullseye-slim` |
| [20-bookworm-slim](https://hub.docker.com/r/bvandevliet/runner-images/tags?name=20-bookworm-slim&ordering=-name) | `node:20-bookworm-slim` | ![size](https://img.shields.io/docker/image-size/bvandevliet/runner-images/20-bookworm-slim?label=size) | `ubuntu-22.04:docker://bvandevliet/runner-images:20-bookworm-slim` |
| [22-bookworm-slim](https://hub.docker.com/r/bvandevliet/runner-images/tags?name=22-bookworm-slim&ordering=-name) | `node:22-bookworm-slim` | ![size](https://img.shields.io/docker/image-size/bvandevliet/runner-images/22-bookworm-slim?label=size) | `ubuntu-latest:docker://bvandevliet/runner-images:22-bookworm-slim` |
