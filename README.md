This is a basic plugin template for use with CommonLibSSE

## Requirements
* [CMake](https://cmake.org/)
	* Add this to your `PATH`
* [The Elder Scrolls V: Skyrim Special Edition](https://store.steampowered.com/app/489830)
	* Add the environment variable `Skyrim64Path` to point to the root installation of your game directory (the one containing `SkyrimSE.exe`).
* [Vcpkg](https://github.com/microsoft/vcpkg)
	* Add the environment variable `VCPKG_ROOT` with the value as the path to the folder containing vcpkg
* [Visual Studio Community 2022](https://visualstudio.microsoft.com/)
	* Desktop development with C++

## Building

### Environment Variables
Basic building requires the environment variable `VCPKG_ROOT` to be set to the location of your vspkg installation.
This can be done either in [Windows system properties](https://docs.oracle.com/en/database/oracle/machine-learning/oml4r/1.5.1/oread/creating-and-modifying-environment-variables-on-windows.html)
or temporarily for the currently running Powershell session **before** running cmake:
```pwsh
$env:VCPKG_ROOT = "C:\vcpkg"
```

Similary you can also set `Skyrim64Path`:
```pwsh
$env:Skyrim64Path = "C:\Program Files (x86)\Steam\steamapps\common\Skyrim Special Edition\" 
```

### Cloning and building
```
git clone --recurse-submodules https://github.com/Ryan-rsm-McKenzie/ExamplePlugin-CommonLibSSE
cd ExamplePlugin-CommonLibSSE
cmake -B build --preset vs2022-windows
cmake --build build --config Release
```

## Tips
* Set `COPY_OUTPUT` to `ON` to automatically copy the built dll to the game directory, i.e. `cmake --preset vs2022-windows -DCOPY_OUTPUT=ON`
* Build the `package` target to automatically build and zip up your dll in a ready-to-distribute format.
