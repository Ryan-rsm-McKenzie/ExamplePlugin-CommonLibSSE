This is a basic plugin template for use with CommonLibSSE

## Requirements
* [CMake](https://cmake.org/)
	* Add this to your `PATH`
* [The Elder Scrolls V: Skyrim Special Edition](https://store.steampowered.com/app/489830)
	* Add the environment variable `Skyrim64Path` to point to the root installation of your game directory (the one containing `SkyrimSE.exe`).
* [PowerShell](https://github.com/PowerShell/PowerShell/releases/latest)
* [Python](https://www.python.org/)
	* Requires at least version 3.9
* [Vcpkg](https://github.com/microsoft/vcpkg)
	* Add the environment variable `VCPKG_ROOT` with the value as the path to the folder containing vcpkg
* [Visual Studio Community 2022](https://visualstudio.microsoft.com/)
	* Desktop development with C++

## Register Visual Studio as a Generator
* Open `x64 Native Tools Command Prompt`
* Run `cmake`
* Close the cmd window

## Building
```
git clone https://github.com/Ryan-rsm-McKenzie/ExamplePlugin-CommonLibSSE
cd ExamplePlugin-CommonLibSSE
git submodule init
git submodule update
cmake --preset vs2022-windows
cmake --build build --config Release
```

## Tips
* Set `COPY_OUTPUT` to `ON` to automatically copy the built dll to the game directory, i.e. `cmake --preset vs2022-windows -DCOPY_OUTPUT=ON`
* Build the `archive_artifacts` target to automatically build and zip up your dll in a ready-to-distribute format.
