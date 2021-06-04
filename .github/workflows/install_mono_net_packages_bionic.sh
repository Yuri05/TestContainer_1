#!/bin/sh

apt-get -y update
apt-get -y install openmpi-bin openmpi-common libopenmpi-dev wget
locale-gen en_US.UTF-8