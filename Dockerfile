FROM jupyter/r-notebook:2022-12-12
    
RUN R -e "install.packages('tidyverse', repos='http://cran.us.r-project.org')" 

# Install an older version of 'nloptr' to avoid conflict with 'lme4' installation
RUN R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/nloptr/nloptr_1.2.1.tar.gz', repos = NULL, type='source')" 

RUN R -e "install.packages('lme4', repos='http://cran.us.r-project.org')" 
RUN R -e "install.packages('plm', repos='http://cran.us.r-project.org')"