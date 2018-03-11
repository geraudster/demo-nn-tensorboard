#!/usr/bin/env bash

FILENAME=$1

python -m scripts.label_image \
    --graph=tf_files/retrained_graph.pb  \
    --image=$FILENAME

#display $FILENAME

