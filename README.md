#Autohotkeys

This repo contains my autohotkeys file. As far as I know, autohotkeys works only
on Windows, but I would also like to get a linux version, and transfer the
script to that as well. If and when that happens, it will be here.

Some features of this script include:
* Automated mouse click when you stop moving the mouse.
* Remapping of the numpad with numlocks off:
    * 4 is double click
    * 5 is single left click
    * 6 is right click
* alt+F1 is a shortcut to toggle this script on and off.
* Caps lock is remapped to ESC (for use with vim. Caps lock keyboard light is
  disabled).
* winkey+g opens a new tab that goes to google.ca

##Usage

As stated above, as far as I know this only works with Windows.

In order to use this script on Windows, you will need to download, and install
[autohotkeys](https://github.com/AutoHotkey/AutoHotkey/releases/download/v1.0.48.05/AutoHotkey104805_Install.exe).

Once it installs, run autohotkeys. It will ask you if you would like it to
generate a sample script. Say yes. You can close the script when it comes up.
Now go and run autohotkeys again. This will actually start up the script and an
icon will appear in the system tray. Right clicking this will give you some
options, including "Reload Script" which is required in order for changes to
your script to take effect.

To use my script, just download my script and replace the contents of my script
with the script that was generated (this will ensure that it is in the correct
place, and has the correct name for autohotkeys to find the file).

The default location for the script should be in your documents folder.
