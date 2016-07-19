#!/bin/bash
. _export.sh

bash stop.sh
docker rm $PROJECTNAME-emotion
