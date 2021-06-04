ARG r_version
ARG os_version
FROM rstudio/r-base:${r_version}-${os_version}

# Args are resetted by FROM - thus need to redeclare! s. https://docs.docker.com/engine/reference/builder/#understand-how-arg-and-from-interact
ARG r_version
ARG os_version

ENTRYPOINT ["sh"]
RUN mkdir -p /tmp_setup 
COPY .github/workflows/*.R /tmp_setup/
COPY .github/workflows/*.sh /tmp_setup/
RUN chmod ugo+x /tmp_setup/*.sh

# Install R package dependencies
#RUN R --no-save -e "source('/tmp_setup/install_packages.R')"

# Install mono, nuget, dotnet-sdk-3.1 and required packages
RUN /tmp_setup/install_mono_net_packages_${os_version}.sh

# Setup environment 
ENV LC_ALL=en_US.UTF-8
ENV LD_LIBRARY_PATH="/usr/lib64/openmpi/lib:/opt/R/${r_version}/lib/R/library/ospsuite/lib:$LD_LIBRARY_PATH"
ENV PATH="/opt/R/${r_version}/bin:${PATH}"

#Install pandoc and Rmpi
RUN /tmp_setup/install_pandoc_rmpi.sh