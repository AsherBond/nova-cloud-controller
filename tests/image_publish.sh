#!/bin/bash
. novarc
image="ttylinux-uec-amd64-12.1_2.6.35-22_1.tar.gz"
[[ ! -e $image ]] && wget http://smoser.brickies.net/ubuntu/ttylinux-uec/$image
uec-publish-tarball $image images
euca-describe-images
