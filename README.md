# studentenportal-base docker image

This repository contains the `studentenportal/base` docker image, which contains all system dependencies.

The reason for this to be an own repository is mainly speed.

## New Release

To create a new release, create a git tag with the new version according to section *Versioning*.

It is automatically built on [Docker Cloud](https://cloud.docker.com/).

## Local Build

```bash
# VERSION should be set according to the section *Versioning* of this document.
docker build --tag="studentenportal/base:VERSION" --tag="studentenportal/base:latest" .
```

## Versioning
```
{PYTHON_VERSION}-{CONTAINER_VERSION}
```

- `PYTHON_VERSION` is the python version used in the base image.
- `CONTAINER_VERSION` is a release counter of this repository.

Example: `2.7-0`
