# Scripts for Surface Pro on Linux
A collection of useful scripts to enhance functionality running in Linux on a Microsoft Surface device.
These scripts have been written with the Surface Pro 3 in mind and may require some modification to work on other devices.

## Customisation
Each script has a section at the top for quickly customising the operation suited to the device and configuration. If you are unsure of how to modify the script for your use-case, it is likely in that section

## Hooks and scripts
The `event` folder contains a collection of scripts that are called by the main programsupon events happening like a screen rotation or a pen button press. They can be modified freely to do whatever you like, the code within is provided as examples as I use them.

### Rotationd
A rotation daemon that polls accelerometer sensor values and rotates the screen and touchscreen inputs accordingly at frequent intervals.
