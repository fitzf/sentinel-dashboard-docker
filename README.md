<img src="https://user-images.githubusercontent.com/9434884/43697219-3cb4ef3a-9975-11e8-9a9c-73f4f537442d.png" alt="Sentinel Logo" width="50%">

# Sentinel Dashboard Docker

![Publish Docker image](https://github.com/zhangfei9734/sentinel-dashboard/workflows/Publish%20Docker%20image/badge.svg)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/zhangfei9734/sentinel-dashboard)
![Docker Pulls](https://img.shields.io/docker/pulls/zhangfei9734/sentinel-dashboard)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/zhangfei9734/sentinel-dashboard)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)

## Introduction

Dockerfile to build a [Sentinel Dashboard](https://sentinelguard.io/en-us/docs/dashboard.html) image for the [Docker](https://www.docker.com/products/container-runtime) opensource container platform.

## Quick Start

```shell
docker run --rm -d -p 8080:8080 zhangfei9734/sentinel-dashboard:latest
```

Open the Sentinel dashboard in your browser http://localhost:8080.

Default account `sentinel/sentinel`.

## Configuration

| Parameter | Description | Default |
| -------- | -------- | -------- |
| TZ | | `Asia/Shanghai` |
| JAVA_OPTIONS | | `-Dserver.port=8080 -Dproject.name=sentinel-dashboard -Dcsp.sentinel.dashboard.server=localhost:8080` |

For more configuration items, please refer to [Sentinel Dashboard reference](https://sentinelguard.io/en-us/docs/dashboard.html).
