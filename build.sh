#!/bin/bash

if [ `whoami` = 'root' ];then
	echo 'root'
	su -m yocto -s /bin/bash -c "./build.sh"
	#sudo -u yocto -s "./build.sh"
	exit 0;
fi

source poky/oe-init-build-env
bitbake -k core-image-minimal

