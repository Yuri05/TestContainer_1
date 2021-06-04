#!/bin/sh

apt-get -y update
apt-get -y install git nuget libcurl4-openssl-dev libssl-dev libxml2-dev openmpi-bin openmpi-common libopenmpi-dev wget
locale-gen en_US.UTF-8