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
>docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/ds-docker:latest

### ai/ml container
>coming soon

### quantum container (qiskit)
>docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/qiskit-docker:latest

### base container with nothing installed
>docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/base-docker:latest

## build your own

1. Build the base container
>git clone https://github.com/plwodi/research-platform-docker
>cd research-platform-docker/base-docker
>docker build -t base-docker .

2. Build the complete container
>cd research-platform-docker/research-docker
>docker build -t research-docker .

3. Run the complete container
> docker run -v ${PWD}:/computer/your_computer -ti research-docker

### adding port to run jupyter lab

> docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti NAME

## run jupyter lab

You can play with Jupyter lab in your browser.
>http://0.0.0.0:8888/?token=[[[paste here the token from the terminal]]]

Sometimes when starting the container the Jupyter Lab URL will not appear.  Running the `jupyter server` command will get you the URL
>jupyter server list

# what's included

The following packages are included in the research-docker container.  All other containers have a subset from this list.

matplotlib, seaborn, plotly, pydot, rasterio, imageio, opencv-python, SQLAlchemy, pandas, h5py, scikit-learn, xgboost, lightgbm, scipy, numpy, torch, torchvision, torchaudio, keras, snapml, tensorflow, tensorboard, ipywidgets, iprogress, elyra, sympy, lale, qiskit, pyscf, qiskit-machine-learning, ibmpairs

# dependecies:
- OS: Ubuntu
