# PASSWORD RECOVERY - CISCO CATALYST SWITCHES

Step 1: Unplug the power cable from the switch.

Step 2: Press and hold the MODE button on the front of the switch and plug the
power cable back into the switch.
Wait for few seconds until the system light turn back ON and keeps blinking and
then release the MODE button.

Step 3: Your HyperTerminal (Putty) should display
switch:

Step 4: Enter the following commands
switch: flash _init
switch: load_helper
switch: dir flash:
switch: rename flash:config.text flash:config.text.old
switch: boot

Step 5: Once the switch reboots,
“Would you like to enter system configuration dialog? [Yes/No]: NO

Step 6: Get into the privilege prompt and configure the following.
Switch>enable
Switch#rename flash:config.text.old flash:config.text
Switch#copy flash:config.text system:running-config
Source filename [config.text]?
Destination filename [running-config]?
Press Enter to copy

Step 7: Save your config
Switch#copy run start
