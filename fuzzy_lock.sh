#!/bin/sh -e

# Take a screenshot
scrot /tmp/screen_locked.png

# blur  it
convert /tmp/screen_locked.png -filter Gaussian -resize 10% -define filter:sigma=2.5 -resize 1000% /tmp/screen_locked.png

# Lock screen displaying this image.
i3lock -i /tmp/screen_locked.png

# Turn the screen off after a delay.
# sleep 60; pgrep i3lock && xset dpms force off
