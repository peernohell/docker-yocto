tar-to-docker:
	cat build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64.tar.bz2 | docker import - base-yocto-builder

build-to-docker:
	./build.sh && make tar-to-docker
	cd ../docker-yocto-builder && make build && make run

docker-build:
	docker run -i -v /home/peernohell/projects/yocto-builder:/yocto-builder  -t yocto-builder
