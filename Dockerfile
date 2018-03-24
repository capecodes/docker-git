FROM alpine:3.7

MAINTAINER Cape Codes <info@cape.codes>

ARG GIT_PACKAGE_VERSION=2.15.0-r1
ARG OPENSSH_PACKAGE_VERSION=7.5_p1-r8

RUN apk --update add bash expect git=${GIT_PACKAGE_VERSION} openssh-client=${OPENSSH_PACKAGE_VERSION} && \
    rm -rf /var/cache/apk/*

ENV HOME=/root
ENV UID=0
ENV GID=0
