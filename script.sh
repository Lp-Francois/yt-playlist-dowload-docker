#!/bin/sh

URL=$1

youtube-dl --extract-audio --audio-format m4a --audio-quality 0 --output "$HOME/Downloads/%(title)s.%(ext)s" --ignore-errors $URL

cd "$HOME/Downloads" || exit
find . | cpio -o --format=tar > musics.tar
mv musics.tar /output/musics.tar

echo "[+] Finish"
