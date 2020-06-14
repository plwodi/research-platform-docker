# Qiskit docker

Execute docker with all the Qiskit dependencies installed, and mounting your current folder/directory inside /qiskit/ folder in docker.

## use

## Create image

> docker build -t qiskit .

## execute mounting your current directory

> docker run -v ${PWD}:/qiskit -ti qiskit

### adding port to run jupyter lab

> docker run -v ${PWD}:/qiskit -p 8888:8888 -ti qiskit

## execute python and start

> python
> from qiskit import *

### run Jupyter Lab

> jupyter lab  --allow-root  --ip=0.0.0.0
