FROM rstudio/r-base:3.6.3-centos7

ENTRYPOINT ["sh"]
RUN mkdir -p /tmp_setup 
COPY .github/workflows/*.R /tmp_setup/
COPY .github/workflows/*.sh /tmp_setup/
RUN chmod ugo+x /tmp_setup/*.sh

# Install R package dependencies
#RUN R --no-save -e "source('/tmp_setup/install_packages.R')"

# Install mono, nuget, dotnet-sdk-3.1 and required packages
#RUN /tmp_setup/install_mono_net_packages_centos7.sh

# Install pandoc
ADD https://github.com/jgm/pandoc/releases/download/2.9.2.1/pandoc-2.9.2.1-linux-amd64.tar.gz /tmp_setup/
RUN mkdir /pandoc && \
    cd /pandoc && \
    mv /tmp_setup/pandoc-2.9.2.1-linux-amd64.tar.gz /pandoc && \
    tar -xzf pandoc-2.9.2.1-linux-amd64.tar.gz && \
    rm -f /usr/bin/pandoc && \
    ln -s /pandoc/pandoc-2.9.2.1/bin/pandoc /usr/bin/pandoc

