FROM alpine:3.6

MAINTAINER Cape Codes <info@cape.codes>

ARG GIT_PACKAGE_VERSION=2.13.5-r0

RUN apk --update add bash git=${GIT_PACKAGE_VERSION} openssh-client && \
    rm -rf /var/cache/apk/*

ENV HOME=/root
ENV UID=0
ENV GID=0
