#!/usr/bin/env bash

# Link the relevant files from here to the prisma/prisma source dir

if [ "$1" == '' ]; then
    echo "You need to pass the source directory as a first argument"
    exit 1
fi

echo "→ Installing files in $1"

echo "Installing flake.nix"
cp ./flake.nix $1/flake.nix

echo "Installing flake.lock"
cp ./flake.lock $1/flake.lock
