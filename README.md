# CivBedTime
A launchd agent that kills any application running out of the "steamapps" folder with "Civilization" in its name at a set time on set days of the week.

The idea is to force you to stop playing whichever Sid Meier's Civilization game you are playing by killing the process.

## What It Does
CivBedTime is intended to act as a remedy for "one more turn" syndrome. If you are like me and can't make yourself stop playing, you should install this.

When CivBedTime is installed, you will choose a time for it to run at, and which days of the week it will be active.

Lets say you pick 10:40 PM on Sunday, Monday, Tuesday, Wednesday, and Thursday nights. At 10:40 PM on each of those nights, the script will automatically start up. It will check to see if there are any processes that have both "steamapps" and "Civilization" in their names.
If it finds something, it will play an alarm and tell you that Civilization will be closed in 5 minutes. After 5 minutes, it will play another sound, and it will quit the game.

## Installation
TODO

## How It Works
CivBedTime is a very simple launchd agent. A plist in the ~/Library/LaunchAgents folder provides the time and date that a script should be run at, and, assuming that the agent is loaded, the script will run at the specified times.

The script itself is a shell script that uses pgrep and pkill to find and kill the Civilization processes, and AppleScript (invoked via the osascript command) to display system notifications (note that the notifications will likely not be visible while in a fullscreen app).

## Uninstalling
If you needed to install this, you probably shouldn't unstall it. But if you really want to, follow these steps:

1) Run the command "launchctl unload ~/Library/LaunchAgents/com.katfish.CivBedTime.plist"

2) Delete com.katfish.CivBedTime.plist from ~/Library/LaunchAgents

3) (Optional) Delete CivBedTime.sh from ~/Scripts

4) (Optional) Delete SirenNoise.mp3 from ~/Library/Sounds

Oh, for those who don't know, "~/" is your user directory. So, if you are logged in as jwhite, "~/" = "/Users/jwhite/".

Also, if ~/Library is not visible, you can reveal it by navigating to your user folder, then opening the view options (command+J), and checking "Show Library Folder".