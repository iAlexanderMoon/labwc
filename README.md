# image-template



# Purpose

_ !!! VERY WIP !!! _ 

This repository is built using the template for building your own custom Universal Blue image. 

* Try adding labwc to a base image and/or any other tools or things I feel like.

## Containerfile

This file defines the operations used to customize the selected image. It contains examples of possible modifications, including how to:
- change the upstream from which the custom image is derived
- add additional RPM packages
- add binaries as a layer from other images

## Workflows

### build.yml

This workflow creates your custom OCI image and publishes it to the Github Container Registry (GHCR). By default, the image name will match the Github repository name.

#### Container Signing

cosign.key has been copied to github action secrets and cosign.pub commit to this repository.

