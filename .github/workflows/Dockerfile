ARG rversion
ARG osversion
FROM rstudio/r-base:${rversion}-${osversion}

ENTRYPOINT ["sh"]
RUN mkdir -p /tmp_setup 
COPY .github/workflows/*.R /tmp_setup/
COPY .github/workflows/*.sh /tmp_setup/
RUN chmod ugo+x /tmp_setup/*.sh

# Install R package dependencies
#RUN R --no-save -e "source('/tmp_setup/install_packages.R')"

# Install mono, nuget, dotnet-sdk-3.1 and required packages
RUN /tmp_setup/install_mono_net_packages_${osversion}.sh

# Setup environment 
ENV LC_ALL=en_US.UTF-8
ENV LD_LIBRARY_PATH="/usr/lib64/openmpi/lib:/opt/R/${rversion}/lib/R/library/ospsuite/lib:$LD_LIBRARY_PATH"
ENV PATH="/opt/R/${rversion}/bin:${PATH}"

#Install pandoc and Rmpi
RUN /tmp_setup/install_pandoc_rmpi.sh