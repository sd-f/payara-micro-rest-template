# payara-micro-rest-template

## Features

Minimal payara micro rest application (template), for micro-service use
- payara maven plugin
- EE 8
- JAX-RS
- context-root predefined /api
- test service

## Development

``mvn clean install payara-micro:start``

## Deployment, Docker

Build image

``docker image build -t payara-micro-rest-template .``

Run service

``docker-compose up -d``

## Service

Running at:

``http://localhost:8080/api/rest/test/test`` :wink: