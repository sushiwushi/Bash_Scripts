#author: sushiwushi
#!/bin/bash
set -e
if [[ $# -eq 0 ]] ; then
    echo "Usage: ./youtube_dl <URL>"
    exit 0
fi
echo "URL=$1"
echo "Checking for updates..."
sudo pip install --upgrade youtube_dl
echo "Downloading $1 now..."
youtube-dl -x -f bestaudio -o "~/Music/%(title)s.%(ext)s" $1
echo "✺◟( ͡° ͜ʖ ͡°)◞✺  Done"
