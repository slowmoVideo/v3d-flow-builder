FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y freeglut3-dev libopencv-dev libglew-dev cmake build-essential

RUN apt-get install -y cmake build-essential

WORKDIR /_build

CMD [ "/bin/sh", "./build.sh" ]
