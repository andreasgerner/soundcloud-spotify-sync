# Soundcloud Spotify Sync

### MacOS only!

## Features

Automatically downloads all new Songs in a given Soundcloud-Playlist and saves them to the `download` directory.
You need to add this folder as Local File Source in your Spotify Client!

Default schedule: every hour (combined to one run if logging in after a longer timespan)

## Prerequisites

- Spotify Desktop App installed
- Any version of Python3 installed
- Homebrew (if you don't have ffmpeg already)

## Usage

Full installation script included, just run:

```shell
./install.sh
```

## Uninstall

To uninstall this service, just delete the `local.soundcloud-spotify-sync.plist` file under `~/Library/LaunchAgents`.
