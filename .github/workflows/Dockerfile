FROM rstudio/r-base:3.6.3-centos7

ENTRYPOINT ["sh"]
RUN mkdir -p /tmp_setup 
COPY .github/workflows/*.R /tmp_setup/
COPY .github/workflows/*.sh /tmp_setup/
RUN chmod ugo+x /tmp_setup/*.sh

# Install R package dependencies
#RUN R --no-save -e "source('/tmp_setup/install_packages.R')"

# Install mono, nuget, dotnet-sdk-3.1 and required packages
RUN /tmp_setup/install_mono_net_packages_centos7.sh

# Install pandoc
#RUN /tmp_setup/install_pandoc.sh

# Setup environment 
ENV LC_ALL=en_US.UTF-8
ENV LD_LIBRARY_PATH="/usr/lib64/openmpi/lib:/opt/R/3.6.3/lib/R/library/ospsuite/lib:$LD_LIBRARY_PATH"
ENV PATH="/opt/R/3.6.3/bin:${PATH}"

#Install RMPI
RUN /tmp_setup/install_rmpi.sh