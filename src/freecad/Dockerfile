# syntax=docker/dockerfile:1.4

# Base Image
# =============================================================================
# Use Ubuntu 20.04 as the base image for more stability over the 'latest' tag
FROM ubuntu:20.04

# Set non-interactive installation to avoid getting stuck on prompts
ARG DEBIAN_FRONTEND=noninteractive

# Set the working directory
WORKDIR /usr/src/app

# Install prerequisites and FreeCAD
# Use a single RUN command to reduce layers and clean up in the same layer to save space
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:freecad-maintainers/freecad-stable && \
    apt-get update && \
    apt-get install -y freecad && \
    # Clean up unnecessary files to keep the image clean and compact
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the default command to run FreeCAD
CMD ["freecad"]
