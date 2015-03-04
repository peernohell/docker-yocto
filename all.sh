make build-to-docker
cd ../docker-yocto-builder
make
cd -
make docker-build
