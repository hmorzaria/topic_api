FROM mcr.microsoft.com/aiforearth/base-r:latest

MAINTAINER hmorzaria@hotmail.com

# Install minimum requirements
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libgsl-dev 
    
    #setup R configs

RUN Rscript -e "install.packages( c( \
    'RCurl', \
    'XML', \
    'rvest', \
    'httr', \
    'reshape2', \
    'tidytext', \
    'wordcloud', \
    'tm', \
    'topicmodels', \
    'robotstxt', \
    'janitor', \
    'tokenizers', \
    'rjson', \
    'tidyverse'), \
    dependencies = TRUE)"
    
ENV TZ America/Los_Angeles
RUN ln -snf /usr/share/timezone/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN R -e 'print(installed.packages());'
