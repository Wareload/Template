<div align="center">
<h1 align="center"> Project Name </h1>

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

#### Brief introduction to the project.

<p align="center">
  <a href="#Kubernetes">Development</a> •
  <a href="#Deployment">Development</a>
</p>

> Use Disclaimers if needed

</div>

[Link to Header](#Kubernetes)

## Usage

TBD

[//]: <> (## Installation, if this is a library)

## Development

### Prerequisites

### Setup

### Run

### Build

## Deployment Templates and Examples

TBD if application

### Docker

```shell
docker run -d -p 20:20 image
```

### Docker compose

```yaml
version: "3"

services:
  mc:
    image: image
    ports:
      - "20:20"
    environment:
      language: "en"
    restart: unless-stopped
    volumes:
      - ./data:/data
```

### Kubernetes

TBD, use a link to a template file

### Helm Charts

TBD

## Licence

TBD