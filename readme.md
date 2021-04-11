# Research platform docker container

The purpose of this container is to provide a basic platform on which data science, artificial intelligence, machine learning and quantum research and activities can take place.

Execute a docker container with some of the common data science, AI/ML, and quantum dependencies installed, and mounting your current working folder/directory to the /computer/your_computer folder within the docker container.

## pre-requisites

You need to have installed docker on your machine, ex. ([Docker Desktop](https://www.docker.com/products/docker-desktop))

## use

Run the `docker run` command for the desired container

### complete container
>docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/research-docker:latest

### data science container
>TBD

### ai/ml container
>TBD

### quantum container (qiskit)
>docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/qiskit-docker:latest

### base container with nothing installed
>docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/base-docker:latest

## build your own

1. Build the base container
>docker build -t base-docker:latest /base-docker/

2. Build the desired container
>docker build -t NAME /NAME/

3. Run the desired container
> docker run -v ${PWD}:/computer/your_computer -ti NAME

### adding port to run jupyter lab

> docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti NAME

## run jupyter lab

You can play with Jupyter lab in your browser.
>http://0.0.0.0:8888/?token=[[[paste here the token from the terminal]]]

Sometimes when starting the container the Jupyter Lab URL will not appear.  Running the `jupyter server` command will get you the URL
>jupyter server list

# dependecies:
- OS: Ubuntu
