#!/bin/sh

# Install pandoc
wget -nv https://github.com/jgm/pandoc/releases/download/2.9.2.1/pandoc-2.9.2.1-linux-amd64.tar.gz -P /tmp_setup/
mkdir /pandoc && \
cd /pandoc && \
mv /tmp_setup/pandoc-2.9.2.1-linux-amd64.tar.gz /pandoc && \
tar -xzf pandoc-2.9.2.1-linux-amd64.tar.gz && \
rm -f /usr/bin/pandoc && \
ln -s /pandoc/pandoc-2.9.2.1/bin/pandoc /usr/bin/pandoc && \
ls -la /pandoc

# Install Rmpi
wget -nv https://cran.r-project.org/src/contrib/Rmpi_0.6-9.1.tar.gz -P /tmp_setup/
R CMD INSTALL /tmp_setup/Rmpi_0.6-9.1.tar.gz --configure-args="--with-Rmpi-include=/usr/include/openmpi-x86_64 --with-Rmpi-libpath=/usr/lib64/openmpi/lib --with-Rmpi-type=OPENMPI"

