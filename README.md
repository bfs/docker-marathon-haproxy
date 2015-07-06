# docker-marathon-haproxy

Dockerized haproxy intended to run as linked container for marathon services

## What is this thing?

This build provides a Docker image that allows you to run a marathon-config-driven haproxy process as a linked container.

## Why?

For latency sensitive apps, having a local load balancer is at least one hop better than making a trip back to the load balancer for each service.

## But wait, there's more...

You configuration can stay extremely simple since each "service" is available via localhost at a configured port.  Machines and assignments change, but your config can stay the same.

## How does it work?

This image has a process that every REFRESH seconds runs marathon-haproxy-bridge, which asks MARATHON_HOST for its current state and updates the local haproxy config.