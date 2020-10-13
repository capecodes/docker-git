FROM alpine:3.12

MAINTAINER Cape Codes <info@cape.codes>

ARG GIT_PACKAGE_VERSION=2.26.2-r0
ARG OPENSSH_PACKAGE_VERSION=8.3_p1-r0

RUN apk --update add bash expect git=${GIT_PACKAGE_VERSION} openssh-client=${OPENSSH_PACKAGE_VERSION} && \
    rm -rf /var/cache/apk/*

RUN addgroup git \
# add a non-root local users
  && adduser -D git -G git \
# unlock the users (but dont set a password)
  && passwd -u git \
  && mkdir -p /home/git/.ssh

USER git
WORKDIR /home/git

ENV HOME=/home/git
ENV UID=1000
ENV GID=1000
