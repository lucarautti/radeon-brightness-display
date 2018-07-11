# radeon-brightness-display

Two simple bash scripts that you can use to change the brightness level of the notebook display in Linux.

I don't know if it works in every distro, it has been tested on Debian stretch with LXDE.

Since AMD graphic cards don't work with xbacklight I've found this workaround.
You have to make them executable with a chmod +x via terminal.

The easiest way I've found is to assign them to keyboard shortcuts.
Fn + Arrow Up and Fn + Arrow Down in my case, but your notebook can be different.
In the LXDE environment you can go to Preferences -> Setup Hot Keys then click on the Program tab.

Create a new action with your preferred keyboard shorcuts. 
In the "command line" field add "/bin/sh /path/where/you/put/scripts.sh"
Obviously without "" and path where you have saved the scripts.

Hope it can help you in some way.
