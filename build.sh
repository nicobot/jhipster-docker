#!/bin/bash
. _export.sh
 
docker build -t emotion-main -f $DOCKERROOT/Dockerfile $DOCKERROOT 

# -p 35729:35729 - For CSS live reload
docker run -p 8080:8080 -p 35729:35729 -v $SCRIPTDIR/www:/var/www/default:rw \
	-v $SCRIPTDIR/shared:/root/shared:rw \
	-v $SCRIPTDIR/:/root/docker_root:rw \
	--name $PROJECTNAME-emotion \
	-d emotion-main \
	tail -f /dev/null