# Docker | FreeCAD

**Starling Studio Suite**

---

This repository contains Docker configurations to run FreeCAD, an open-source 3D parametric modeler. It provides a straightforward way to deploy FreeCAD in containerized environments, ensuring compatibility and ease of setup across different systems.

## Introduction

FreeCAD is a highly versatile 3D CAD, MCAD, CAx, CAE, and PLM modeler. The Docker image created from this repository allows users to run FreeCAD within Docker containers, making it independent of the host's operating system and configuration.

## Prerequisites

To use the Docker images and build scripts provided in this repository, you must have the following installed on your system:

- Docker (See Docker installation guide [here](https://docs.docker.com/get-docker/))
- Git (optional, for cloning the repository)

## Getting Started

### Clone the Repository

To get started with these Docker configurations, first clone the repository to your local machine:

```bash
git clone https://github.com/starling-cloud/docker-freecad.git
cd docker-freecad
```

### Build the Docker Image

You can build the Docker image using the provided Makefile:

```bash
make build
```

This command builds a Docker image named `starling-cloud/freecad` tagged with the git commit hash and `latest`.

### Run FreeCAD

To start a FreeCAD session using the Docker image, run:

```bash
make run
```

This command runs FreeCAD in a Docker container, allowing you to use FreeCAD as if it were installed on your host system.

### Push the Docker Image to a Registry

If you need to push the built image to Docker Hub or another Docker registry:

```bash
make push
```

Ensure you are logged into your Docker registry account before pushing the image.

## Cleaning Up

To remove the Docker images from your local system:

```bash
make clean
```

## Contributing

Contributions to this repository are welcome. Please ensure that you submit a pull request with a clear description of your changes or additions.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

This Docker configuration is based on community efforts and contributions. Special thanks to all the contributors who have invested their time in improving this project.


## Colophon

## Starling Studio Suite

**Starling Studio Suite** is an advanced collection of Docker images specifically tailored for the Architecture, Engineering, and Construction (AEC) industry and spatial computing. This suite offers a comprehensive set of tools that facilitate everything from design and visualization to simulation, collaboration, and spatial analysis.

The **Starling Studio Suite** aims to provide a cohesive environment where architects, engineers, and construction professionals can leverage cutting-edge technologies to enhance their workflows. This includes applications for Building Information Modeling (BIM), Computer-Aided Design (CAD), Geographic Information Systems (GIS), and more.

The **Starling Studio Suite** provides a comprehensive set of Docker images tailored for the AEC industry and spatial computing. It offers tools for design, BIM, GIS, simulation, collaboration, and automation, making it an invaluable resource for professionals looking to enhance their workflows and deliver innovative solutions in the built environment.

- [Docker | Blender](https://github.com/starling-cloud/docker-blender)
- [Docker | FreeCAD](https://github.com/starling-cloud/docker-freecad)
- [Docker | Mitsuba](https://github.com/starling-cloud/docker-mitsuba)
- [Docker | OpenSCAD](https://github.com/starling-cloud/docker-openscad)
- [Docker | pythonOCC](https://github.com/starling-cloud/docker-pythonocc)
- [Docker | Rhino](https://github.com/starling-cloud/docker-rhino)
- [Docker | Speckle](https://github.com/starling-cloud/docker-speckle)
- [Docker | Unreal](https://github.com/starling-cloud/docker-unreal)
