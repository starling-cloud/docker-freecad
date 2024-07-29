# syntax=docker/dockerfile:1.4

# Base Image
# =============================================================================

# Use a specific version of Ubuntu for reproducible builds
FROM ubuntu:20.04 AS base

# Prevent apt from prompting during installations
ARG DEBIAN_FRONTEND=noninteractive

# Set the working directory to /app for a cleaner structure
WORKDIR /app

# Optimize layer caching by separating the addition of the repository and
# installation of packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common && \
    add-apt-repository ppa:freecad-maintainers/freecad-stable

# Install FreeCAD
# =============================================================================
# Install FreeCAD and clean up in one layer to reduce image size
RUN apt-get update && \
    apt-get install -y --no-install-recommends freecad && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Run FreeCAD
# =============================================================================
CMD ["freecad"]