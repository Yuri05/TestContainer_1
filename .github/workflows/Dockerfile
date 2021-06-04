FROM rstudio/r-base:3.6.3-centos7

ENTRYPOINT ["sh"]
RUN mkdir -p /tmp_setup 
COPY .github/workflows/*.R /tmp_setup/
COPY .github/workflows/*.sh /tmp_setup/

# Install R package dependencies
RUN R --no-save -e "source('/tmp_setup/install_packages.R')"

# Install mono, nuget, dotnet-sdk-3.1 and required packages
RUN /tmp_setup/install_mono_net_packages_centos7.sh
