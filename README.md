# Scripts for Surface Pro on Linux
A collection of useful scripts to enhance functionality running in Linux on a Microsoft Surface device.
These scripts have been written with the Surface Pro 3 in mind and may require some modification to work on other devices.

## Customisation
Each script has a section at the top for quickly customising the operation suited to the device and configuration. If you are unsure of how to modify the script for your use-case, it is likely in that section

## Hooks and scripts
The `event` folder contains a collection of scripts that are called by the main programsupon events happening like a screen rotation or a pen button press. They can be modified freely to do whatever you like, the code within is provided as examples as I use them.

### Rotationd
A rotation daemon that polls accelerometer sensor values and rotates the screen and touchscreen inputs accordingly at frequent intervals.
This script is a rewrite of the python script [surfacetools/autorotate](https://github.com/frebib/surface-tools/tree/master/autorotate) by freundTech in Bash. It has been modified slightly but in operation still performs basically the same functionality.

### Pend
A bluetooth daemon that listens to bluetooth packets from the Surface Pen devices and opens a program when the button is pressed or held down.  
*Note: This script runs hcidump as sudo to allow reading of bluetooth packets. I advise for convenience sake that hcidump is set as NOPASSWD in /etc/sudoers or run as an elevated system service to prevent password prompts every boot.*

### Orientation
Queries the sensors and calculates the actual orientation of the device, printing the output. This script is used by `rotationd` to determine the real orientation to rotate the screen to
