#!/bin/bash

major=$(sed -e 's/MARKETING_VERSION = \([0-9]*\)\..*/\1/' ./version.txt)
minor=$(sed -e 's/MARKETING_VERSION = [0-9]*\.\([0-9]*\)\..*/\1/' ./version.txt)
patch=$(sed -e 's/MARKETING_VERSION = [0-9]*\.[0-9]*\.\([0-9]*\).*/\1/' ./version.txt)

minor=$(($minor + 1))
echo "Next Major: $major, Minor: $minor, Patch: $patch"
version="$major.$minor.0"
sed -i "" -E "s/MARKETING_VERSION = [0-9]+\.[0-9]+\.[0-9]+$/MARKETING_VERSION = $version/g" ./version.txt
