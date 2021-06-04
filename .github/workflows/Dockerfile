FROM rstudio/r-base:3.6.3-centos7

ENTRYPOINT ["sh"]
RUN mkdir -p /tmp_setup 
COPY .github/workflows/install_packages.R /tmp_setup/install_packages.R

# Install R package dependencies
#RUN R --no-save -e "install.packages('tictoc', repos='http://cran.rstudio.com/')"
RUN R --no-save -e "source('/tmp_setup/install_packages.R')"