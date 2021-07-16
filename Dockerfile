FROM jupyter/minimal-notebook:latest

ARG conda_env=python36

USER root
RUN apt-get update -y && apt-get install -y --no-install-recommends build-essential gcc \
                                        libsndfile1 

USER ${NB_USER}


COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
