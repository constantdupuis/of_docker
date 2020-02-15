# OpenFrameworks Docker for WebAssembly

The goal is to build a docker image allowing to build WebAssembly OpenFrameworks projects, while coding and also building under windows in Visual Studio.

All this was build to work on Windows machine.

# Quick Start

Install Docker Desktop.

https://hub.docker.com/?overlay=onboarding

> Installing Docker Desktop work only on Windows 10 Pro \*, with Hyper-V installed and hardware virtualization activated. After Hyper-V activation Virtual-Box won't work anymore, if you have installed it.

> (\*) I ear that it's possible to install Docker Desktop on Windows 10 Home

## Clone repo

Clone this repository whereever you want and change directoy inside.

```powershell
git clone https://github.com/constantdupuis/of_docker.git
cd of_docker
```

The `apps` folder contain a OF project, `mySketch` build with projectbuilder for Visual Studio AND Linux Q Creator to have make files.

You can load/edit and compile the mySketch project with Visual Studio.

In this of_docker folder, download the linux version of OpenFrameworks (https://openframeworks.cc/versions/v0.11.0/of_v0.11.0_linux64gcc6_release.tar.gz).

## Build Docker image

Then, build docker image, run the build.ps1 script.

```powershell
./build.ps1
```

This will build an image with OF and emsdk setup.
Once image is build you get back to you command prompt.

## Test

Start the container, call the run.ps1 script.

```powershell
./run.ps1
```

You will land inside a shell in the running container, which look like:

```bash
root@1ebd8e382c9c:/home/dev/emsdk#
```

First load emsdk env

```bash
root@1ebd8e382c9c:/home/dev# source emsdk_env.sh
```

Them move to `/home/dev/OF/apps/mySketch` and build project with emscripten.

```bash
root@1ebd8e382c9c:/home/dev/OF/apps/mySketch# emmake make
```

Once compilation is done, builded files (html, wasm, js...) will be available on your Windows host in the `apps/mySketch/bin` folder.

Then load the html file in Firefox, Brave or other browser that support WEBASM.

> For Firefox, you have to disable the CORS security, see [this](http://testingfreak.com/how-to-fix-cross-origin-request-security-cors-error-in-firefox-chrome-and-ie/) article. This allow browser to load local files (security issue). Similare manipulation should be needed for other browsers.

You should see shapes diplayed on the loaded page.

# Issues

- switching to full screen doesn't work
