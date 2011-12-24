#!/bin/sh

git submodule init
git submodule update
cd bundle/command-t && rake make


