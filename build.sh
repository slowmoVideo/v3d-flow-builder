#!/bin/sh

mkdir -p build-docker
cd build-docker
cmake ..
make
cp src/slowmoFlowBuilder ..
