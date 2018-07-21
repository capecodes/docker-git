FROM alpine:3.8

MAINTAINER Cape Codes <info@cape.codes>

ARG GIT_PACKAGE_VERSION=2.18.0-r0
ARG OPENSSH_PACKAGE_VERSION=7.7_p1-r2

RUN apk --update add bash expect git=${GIT_PACKAGE_VERSION} openssh-client=${OPENSSH_PACKAGE_VERSION} && \
    rm -rf /var/cache/apk/*

ENV HOME=/root
ENV UID=0
ENV GID=0
