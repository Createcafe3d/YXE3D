# YXE3D
The is the front end for YXE3Dtools (https://github.com/CreateCafe3D/YXE3Dtools). And is the main entry point into the wonderful world of Low Cost SLA 3D printing.

## Trello (~Agile) Board:
https://trello.com/b/b91bRMSQ/yxe-3d

# Installation

Currently all installation is from source
[Working on compiled binaries to be hosted at yxe3d.com]

### Supported OS versions

Windows 7+
So far all tested recent Macs (10.2+)
Linux Debian (Ubuntu and the like) 14.04 and 16.04 tested

# Running from source

## Windows
### Dependancies
*Python 2.7 64bit or 32bit  (64 bit recommended)
  *Scripts assume location of python c:\Python27_32 or c:\Python27_64
  *Available at [https://www.python.org/]
*Microsoft Visual C++ Compiler for Python 2.7
  *Available at [http://aka.ms/vcpython27]
*Virtual Python Environment builder
  *Install with  "%PYTHONPATH%\Scripts\pip.exe install virtualenv
*Other dependancies are installed by the build scripts.

### Setup environment and build
Running _build_windows_amd64-zip.bat_ or _build_windows_x86-zip.bat_ will setup the environment and installed required components.

### Running
As PeachyPrinter runs in a python virtual environment you first need to activate it:
_call venv/Scripts/activate.bat_
Once activated the software can be run with the command:
_python src/main.py_ 

## Mac
### Dependancies
*pip
  *If Homebrew is install this can be install via the home brew install of python which is a good idea for python development rather the using the built in: _brew install python_
*Virtual Python Environment builder
  *Install with pip install virtualenv
*Other dependancies are installed by the build scripts.

### Setup environment
Running _build_mac.sh_ will setup the environment and installed required components.

### Running
As PeachyPrinter runs in a python virtual environment you first need to activate it:
_source venv/bin/activate_
Once activated the software can be run with the command:
_python src/main.py_ 

## Linux
### Dependancies
- amd64 platform
- 32bit platrorms in testing with some workarounds
- darwin like linux (all testing done with ubuntu) _Other operating systems may work as well if dependancies can be met but are not yet supported_

### Setup environment
There is a handy script to help you get started:
1 Checkout the code from github _git clone https://github.com/CreateCafe3D/YXE3D.git_
3 Open a terminal window and go to the directory you just unziped.
4 Type  **./build_linux.sh -d -i -j** and hit enter to run 
 - The -i flag will install the requirements via apt.
 - The -j flag adds a line to allow access to the usb port. and creates a run.sh script.
 - The -d Builds a driver.


### Running
**./run.sh**  and hit enter to start the software.

#Known Issues (Includes API issues)
 - Configuration can have problems if printers are swapped while software is running
 - Virtual machines will not work as the usb driver abstractions cannot keep up
 - The 32 bit linux driver is installed into wrong location. Workaround is renaming the folder from amd64->x86 This is found at ./venv/local/lib/python2.7/site-packages/peachyprinter/dependancies/linux

#Contributors
**James Townley** - Lion share of the entire peachy code base
**Tony Arkles**   - PCB and firmware design
**Peachy Team**   - For all the work on the movement system and creating a great framework
Nicolas Rubio - Posisition icon - source: https://www.iconfinder.com/icons/311123/coordinates_gps_locate_location_map_position_icon

#Contributing
## Development goals
 - Continuous deployment
 - TDD when possible(UI elements not included)
 - Il8n
 - Simple contained development enviroment
 - Cross platform (Inital goals: Windows, Mac, Ubuntu )

# Release Notes
January 25th  2016 :: 1.0.x Initial public release of peachy printer ui for peachy printer tools.
