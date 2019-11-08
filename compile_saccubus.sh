#!/usr/bin/env bash

function cleanup {
  rm -f _tmp.sh
}

trap cleanup EXIT

sed -e 's/https:\/\/github.com\/FFmpeg\/FFmpeg.git/https:\/\/github.com\/Saccubus\/ffmpeg.git/g' cross_compile_ffmpeg.sh > _tmp.sh
bash _tmp.sh
