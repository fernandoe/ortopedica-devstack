#!/usr/bin/env bash

REPOSITORY=git@github.com:fernandoe

cd $DEVSTACK_WORKSPACE

while read line
do
    eval 'array=($line)'
    name=${array[0]}
    if [ -d "${name}" ]; then
        printf "The [${name}] repo is already checked out. Continuing.\n" $name
    else
        git clone "${REPOSITORY}/${array[0]}.git"
    fi
done
