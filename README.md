# V3D Flow Builder

The V3D Flow Builder is a GPU based tool that calculates the optical flow between two input images.

It can be used by slowmoVideo.


## Building

### Ubuntu 20.04

On Ubuntu 20.04, install the requirements `freeglut3-dev libopencv-dev libglew-dev `

```bash
git submodule update --init
mkdir build
cd build
cmake ..
make

# use compiled binary at v3d-flow-builder/build/src/slowmoFlowBuilder
# or install:
sudo make install
```

### Docker

```bash
# Build the docker image which will build v3d-flow-builder
docker build . -name v3d-builder

# Build v3d-flow-builder inside the docker image
docker run -it --rm -v $(pwd):/_build -u $(id -u) v3d-builder
```
