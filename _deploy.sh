#!/bin/sh

rm -rf ./docs/
mkdir ./docs
cp -r ./public/* ./docs/
rm -rf ./public
touch ./docs/.nojekyll
git add ./docs/