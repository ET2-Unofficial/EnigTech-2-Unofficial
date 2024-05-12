#!/bin/bash
PACK_NAME=EnigTech2
MAJOR_VERSION=2
MINOR_VERSION=0
ITERATION_VERSION=1

fileName="$PACK_NAME-$MAJOR_VERSION.$MINOR_VERSION.$ITERATION_VERSION-unofficial-dev.zip"

cd $PACK_NAME/

zip -r $fileName overrides

zip -m $fileName manifest.json

zip -m $fileName modlist.html

cd ..

mv ./$PACK_NAME/$fileName artifacts/
