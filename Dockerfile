FROM jupyter/base-notebook
    
USER root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -yqq && \
    apt-get install -yqq gnuplot octave && \
    apt-get autoclean \
    apt-get clean
    
USER jovyan
RUN pip install octave_kernel && \
    export OCTAVE_EXECUTABLE=$(which octave)
