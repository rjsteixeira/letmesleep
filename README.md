# letmesleep
This script sets the wakeup toggle to disabled on a given PRODID
Tis stops the device from being able to wakeup the computer from sleep.
I did this so that my mouse didn't wake my laptop while it was in my bag.

Tested in Fedora Core 24 with an Microsoft Mouse.

# Setup
Find the idProduct of your device and change the PRODID var.
Set the script executable and put the script in `/lib/systemd/system-sleep`.

# Thanks
Inspired by http://askubuntu.com/a/713247

