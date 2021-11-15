This is a basic plugin template for use with CommonLibSSE for SSE or VR

## Requirements
These must be completed for any later steps to work.
* [CMake](https://cmake.org/)
	* Add this to your `PATH`
* [PowerShell](https://github.com/PowerShell/PowerShell/releases/latest)
* [Vcpkg](https://github.com/microsoft/vcpkg)
	* Add the environment variable `VCPKG_ROOT` with the value as the path to the folder containing vcpkg
* [Visual Studio Community 2019](https://visualstudio.microsoft.com/)
	* Desktop development with C++

### Register Visual Studio as a Generator
* Open `x64 Native Tools Command Prompt`
* Run `cmake`
* Close the cmd window

## Building
```
git clone https://github.com/Ryan-rsm-McKenzie/ExamplePlugin-CommonLibSSE
cd ExamplePlugin-CommonLibSSE
```
### CommonLibSSE or CommonLibVR
```
# pull CommonLibSSE and CommonLibVR
# alternatively, override by setting environment variable `CommonLibSSEPath` or `CommonLibVRPath` if you need something different from extern
git submodule update --init --recursive

```
#### SSE
```
cmake -B build -S .
```

#### VR
```
cmake -B build -S . -DBUILD_SKYRIMVR=ON
```
Open build/ExampleProject.sln in Visual Studio.

### Building in Visual Studio
1. Select Configuration and Platform (e.g., Release/x64)
2. Build Solution (Build -> Build Solution (Ctrl-Shift-B))
3. Copy files from `build/Release` (e.g., ExampleProject.dll) to `/Data/SKSE/Plugin`.
	* Alternatively, run `cmake` with `-DCOPY_BUILD=on` to auto copy to directory and set `SkyrimSSEPath` or `SkyrimVRPath` in environment or CMakeLists.txt.

### Testing in Skyrim
1. Install required end user dependencies.
	* SSE
		* [SKSE](https://skse.silverlock.org/)
		* [Addess Library for SKSE](https://www.nexusmods.com/skyrimspecialedition/mods/32444)
	* VR
		* [SKSEVR](https://skse.silverlock.org/)
		* [VR Address Library for SKSE](https://www.nexusmods.com/skyrimspecialedition/mods/58101)
2. Run Skyrim.
3. Logs will be generated in `my games\Skyrim Special Edition\SKSE\ExampleProject.log` or `my games\Skyrim VR\SKSE\ExampleProject.log`
```text
ExamplePlugin-CommonLibSSE\src\main.cpp(28): [info] ExampleProject v1.0.0
ExamplePlugin-CommonLibSSE\src\main.cpp(56): [info] loaded
```

## Making Changes

### Project Name, Version, and Author
> A tweak number of `.1` is automatically added to VR builds to distinguish from SSE (e.g., SSE build (1.0.0) vs VR build (1.0.0.1))
* Edit lines 2-3 [CmakeLists.txt](CmakeLists.txt#L2-L3). This will take effect after the next run of `cmake`.
* Edit [vcpkg.json](vcpkg.json) `name` and `version-string` sections.
* Edit [LICENSE](LICENSE#L3) to change copyright author.

### Adding Development Dependencies
* Edit [vcpkg.json](vcpkg.json) `dependencies` section. `vcpkg install` or use `cmake`
