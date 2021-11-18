# RetroPie standby script

This is a script to put a Raspberry Pi with RetroPie to a standby state and to wake up.

The idea is to have a similar effect as in the modern consoles, where you just send the console to a low power consumption state when logging off and then get back to the exact situation where you left.

## How is it done?

When you send the Rpi to standby, it'll turn off the following resources:

- Video output
- Network
- Unpair bluetooth devices

And to wake up, you just need to connect a bluetooth device or perform a key stroke with a keyboard.

## Setup

Clone this repository to `/home/pi/scripts`:

```
cd /home/pi/scripts
git clone https://github.com/makmonty/retropie-standby
```

Copy the content of the file `udev.rules` into a file in `/etc/udev/rules.d/` and restart the udev service.

```
cd /home/pi/retroie-standby
sudo cp udev.rules /etc/udev/rules.d/99-retropie-standby.rules
sudo service udev restart
```

## Plans

I'd love to see this script supported by Emulation Station as an additional button next to QUIT (or in its submenu)
