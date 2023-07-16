#!/bin/zsh

if [ -z "$(launchctl getenv PATH)" ]; then
  sudo launchctl config user path "$PATH"
fi

if command -v ffmpeg &>/dev/null; then
  echo "ffmpeg is installed."
else
  brew install ffmpeg
  echo "ffmpeg successfully installed."
fi

if command -v scdl &>/dev/null; then
  echo "scdl is installed."
else
  pip3 install scdl
  echo "scdl successfully installed."
fi

echo -n "Enter Soundcloud Link: "
read -r link

sed "s/PWD/$(pwd | sed 's/\//\\\//g')/g" ./local.soundcloud-spotify-sync.plist |
sed "s/LINK/$(echo "$link" | sed 's/\//\\\//g')/g" \
  >~/Library/LaunchAgents/local.soundcloud-spotify-sync.plist

echo "Launch Agent successfully installed."
echo "Add $PWD/download/ as Local File Directory in Spotify!"
