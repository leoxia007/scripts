#!/bin/sh
repo sync --force-sync --no-clone-bundle --no-tags
while [ $? -ne 0 ]
do
repo sync --force-sync --no-clone-bundle --no-tags
done
