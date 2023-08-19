#!/bin/sh

set -e

# Create a temporary directory
tmpdir=$(mktemp -d)

# Extract the .deb package to the temporary directory
wget https://github.com/jatinchowdhury18/AnalogTapeModel/releases/download/v2.11.1/ChowTapeModel-Linux-x64-2.11.1.deb
dpkg-deb -x ChowTapeModel-Linux-x64-2.11.1.deb $tmpdir

# Copy the necessary files to the output directory
mkdir -p $out/lib/chow_tape
cp -r $tmpdir/* $out/lib/chow_tape

# Clean up
rm -rf $tmpdir

