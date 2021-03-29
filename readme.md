# Research platform docker

Execute docker with some of the common data science and AI/ML dependencies installed, and mounting your current folder/directory inside /computer/ folder in docker.

## use

you need to have installed docker in your machine, ex. ([Docker Desktop](https://www.docker.com/products/docker-desktop))

### with Jupyter Lab and tutorials

you can use it directly from Docker hub

> docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/research-docker

### Vanilla version

## Create image

> docker build -t research-docker .

## execute mounting your current directory

> docker run -v ${PWD}:/computer/your_computer -ti research-docker

### adding port to run jupyter lab

> docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti research-docker

### run Jupyter Lab

you can play with Jupyter lab in your browser.
> htt://0.0.0.0:8888/?token=[[[paste here the token from the terminal]]]

you may need to run the following command to get the Jupyter lab url
>jupyter server list


# dependecies:
- OS: Ubuntu
