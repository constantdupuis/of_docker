# OpenFrameworks Docker for WebAssembly

The goal is to build a docker image allowing to build WebAssembly program while coding under windows in Visual Studio.

# Setup

Install Docker Desktop.

https://hub.docker.com/?overlay=onboarding

> Installing Docker Desktop work only on Windows 10 Pro, with Hyper-V installed and hardware virtualization activated. After Hyper-V activation Virtual-Box won't work anymore, if you have installed it.

Clone this repository

```powershell
git clone https://github.com/constantdupuis/of_dockergit
```

Change directory to of_docker folder. Download in this folder the linux version of OpenFrameworks (https://openframeworks.cc/versions/v0.11.0/of_v0.11.0_linux64gcc6_release.tar.gz).

Then run the build.ps1 script.

```powershell
./build.ps1
```

This will build an image with OF and emsdk setup.

## Test

Call the run.ps1 script.

```powershell
./run.ps1
```

You will land inside a shell in the running container.
