FROM rstudio/r-base:3.6.3-centos7

ENTRYPOINT ["sh"]

# Install R package dependencies
RUN R --no-save -e "install.packages('tictoc', repos='http://cran.rstudio.com/')"
