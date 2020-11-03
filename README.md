This is a basic plugin template for use with CommonLibSSE

## Requirements
* [CMake](https://cmake.org/)
	* Add this to your `PATH`
* [PowerShell](https://github.com/PowerShell/PowerShell/releases/latest)
* [Vcpkg](https://github.com/microsoft/vcpkg)
	* Add the environment variable `VCPKG_ROOT` with the value as the path to the folder containing vcpkg
* [Visual Studio Community 2019](https://visualstudio.microsoft.com/)
	* C++ Clang tools for Windows
	* Desktop development with C++

## Building
* Open `x64 Native Tools Command Prompt`
* Run `cmake`
* Close the cmd window
* Invoke the bootstrap file with powershell
* Open the generated solution file in the `build` directory
* Build the solution
