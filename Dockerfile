ARG BASE_IMAGE_PATH="golang:1.24"

FROM $BASE_IMAGE_PATH

ARG BUILD="20250815"
ARG MAINTAINER="Alex Iankoulski"
ARG DESCRIPTION="cpuburn Depend on Docker Image"
ARG http_proxy
ARG https_proxy
ARG no_proxy

LABEL MAINTAINER="$MAINTAINER"

LABEL DESCRIPTION="$DESCRIPTION"

LABEL BUILD="$BUILD"

ADD Container-Root /

RUN export http_proxy=$http_proxy; export https_proxy=$https_proxy; export no_proxy=$no_proxy; /setup.sh; rm -f /setup.sh

CMD /startup.sh

