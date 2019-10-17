FROM mcr.microsoft.com/aiforearth/base-r:latest



RUN R -e 'print(installed.packages());'
