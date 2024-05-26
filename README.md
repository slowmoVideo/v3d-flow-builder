# V3D Flow Builder

The V3D Flow Builder is a GPU based tool that calculates the optical flow between two input images.

It can be used by slowmoVideo.


## Building

Before building, get the latest version with the following command:

```bash
# Get the latest commit of this branch
git pull --rebase

# Update the libSvFlow submodule to the correct commit
git submodule update --init
```

### Ubuntu 20.04

On Ubuntu 20.04, install the requirements `freeglut3-dev libopencv-dev libglew-dev `

```bash
mkdir build
cd build
cmake ..
make

# use compiled binary at v3d-flow-builder/build/src/slowmoFlowBuilder
# or install:
sudo make install
```

### Docker

You can build slowmoFlowBuilder with Docker for different target systems.
Currently, Ubuntu 20.04 and Ubuntu 22.04 are supported.

```bash
# Build the docker image which will build slowmoFlowBuilder
# For Ubuntu 20.04: use Dockerfile-ubuntu2004 instead
docker build . -t v3d-builder -f Dockerfile-ubuntu2204

# Build v3d-flow-builder inside the docker image.
# The executable will be copied to the working directory.
docker run -it --rm -v $(pwd):/_build -u $(id -u) v3d-builder
```
