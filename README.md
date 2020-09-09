# V3D Flow Builder

The V3D Flow Builder is a GPU based tool that calculates the optical flow between two input images.

It can be used by slowmoVideo.


## Building

On Ubuntu 20.04, install the requirements `freeglut3-dev libglew-dev`

```bash
git submodule update --init
mkdir build
cd build
cmake ..
make
```
