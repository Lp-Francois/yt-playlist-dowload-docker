#!/bin/sh

youtube-dl --extract-audio --audio-format m4a --audio-quality 0 --output "$HOME/Downloads/%(title)s.%(ext)s" --ignore-errors https://www.youtube.com/playlist?list=PL-VMh388jz0hDQsgaggxU47SfERqVy09I

cd "$HOME/Downloads" || exit
find . | cpio -o --format=tar > musics.tar
mkdir -p /output
mv musics.tar /output/musics.tar

echo "[+] Finish"
