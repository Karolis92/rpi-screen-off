### ABOUT

This script is written to use with Raspberry pi (tested on rpi3 running Raspbian 9.1)  
This script suppose to turn off power to the screen (make it go to sleep) when xscreensaver blanks the screen

Also script does not power off the screen if kodi is running on purpose. Because kodi is not running on LXDE and any activity on kodi does not stop xscreensaver from blanking LXDE, we don't want that to turn off the screen.  
So to blank the screen on kodi I use this nifty addon: https://github.com/asavah/script.pidisplaypower

### USAGE

* Install xscreensaver by running the command "sudo apt-get install xscreensaver" and configure it to blank the screen
* install caffeine - "sudo apt-get install caffeine". This prevents screensaver from activating when watching fullscreen video
* add "hdmi_sleep.sh" file to "/home/pi/scripts/"
* make script executable with "sudo chmod +x hdmi_sleep.sh"
* execute script and test if no errors are shown with "./hdmi_sleep.sh"
* if no errors, edit "~/.config/lxsession/LXDE-pi/autostart" and add "@sh /home/pi/scripts/hdmi_sleep.sh" to the end
* restart
