#author: sushiwushi
#!/bin/bash -e
if [[ $# -eq 0 ]] ; then
    echo "Usage: ./youtube_dl <URL>"
    exit 0
fi
echo "URL=$1"
if youtube-dl -x -f bestaudio -o "~/Music/%(title)s.%(ext)s" $1; then
  echo "✺◟( ͡° ͜ʖ ͡°)◞✺  Done"
else
  echo "Checking for updates..."
  sudo pip install --upgrade youtube_dl
  youtube-dl -x -f bestaudio -o "~/Music/%(title)s.%(ext)s" $1
  echo "✺◟( ͡° ͜ʖ ͡°)◞✺  Done"
fi
