#Autohotkeys

This repo contains my AutoHotKeys Script for Windows, and a bash script for
Linux that mimicks the auto mouse click feature of my AutoHotKeys Script.

Some features of this script include (Unless otherwise specified, this only
applies to the Windows AutoHotKeys Script):
* Automated mouse click when you stop moving the mouse. (For Bash Script as well)
* Remapping of the numpad with numlocks off:
    * 4 is double click
    * 5 is single left click
    * 6 is right click
* alt+F1 is a shortcut to toggle this script on and off.
* Caps lock is remapped to ESC (for use with vim. Caps lock keyboard light is
  disabled).
* Easy typing of German Characters: ä Ä ü Ü ö Ö and ß (This functionality can
  also exist in Linux, if you use my .XCompose and .profile files from my dotfiles repo)

##Usage (Windows Script)

In order to use the AutoHotKeys script on Windows, you will need to download, and install
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


##Usage (Linux Script)

This script requires that xdotool is installed. Simply install with:

```bash
$ sudo apt-get install xdotool
```

Now just save the file wherever suites your fancy, and execute it:

```bash
$ ./auto-mouse-click
```

Voila, your mouse will click itself!
