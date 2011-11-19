#!/bin/sh

git submodule init
git submodule update
./update_bundles.rb init
./update_bundles.rb
cd bundle/command-t $$ rake make


