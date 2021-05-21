# Research platform docker container

The purpose of this container is to provide a basic platform on which data science, artificial intelligence, machine learning and quantum research and activities can take place.

Execute a docker container with some of the common data science, AI/ML, and quantum dependencies installed, and mounting your current working folder/directory to the /computer/your_computer folder within the docker container.

## pre-requisites

You need to have installed Docker on your machine, ex. ([Docker Desktop](https://www.docker.com/products/docker-desktop))

## use

Execute the `docker run` command for the desired container.  Additional parameters can be found in the [docker run documentation](https://docs.docker.com/engine/reference/run/)

### complete container
```
docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/research-docker:latest
```

### data science container
```
docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/ds-docker:latest
```

### ai/ml container
```
coming soon
```

### quantum container (qiskit)
```
docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/qiskit-docker:latest
```

### base container with nothing installed
```
docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti plwodi/base-docker:latest
```

## build your own

1. Build the base container
```
git clone https://github.com/plwodi/research-platform-docker
cd research-platform-docker/base-docker
docker build -t base-docker .
```

2. Build the complete container
```
cd research-platform-docker/research-docker
docker build -t research-docker .
```

3. Run the complete container
```
docker run -v ${PWD}:/computer/your_computer -ti research-docker
```

### adding port to run jupyter lab

```
docker run -v ${PWD}:/computer/your_computer -p 8888:8888 -ti NAME
```

## run jupyter lab

You can play with JupyterLab in your browser.
```
http://0.0.0.0:8888/?token=[[[paste here the token from the terminal]]]
```

Sometimes when starting the container the Jupyter Lab URL will not appear.  Manually running the `jupyter server` command will get you the URL needed to access JupyterLab
```
jupyter server list
```

# what's included

The following packages are included in the complete research-docker container.  All other containers have a subset of packages installed from this list.

- [elyra](https://github.com/elyra-ai/elyra)
- [h5py](https://www.h5py.org)
- [ibmpairs](https://github.com/ibm/ibmpairs)
- [imageio](https://pypi.org/project/imageio/)
- [iprogress](https://pypi.org/project/IProgress/)
- [ipywidgets](https://ipywidgets.readthedocs.io/en/latest/)
- [keras](https://keras.io)
- [lale](https://github.com/IBM/lale)
- [lightgbm](https://lightgbm.readthedocs.io/en/latest/Python-Intro.html)
- [matplotlib](https://matplotlib.org)
- [numpy](https://numpy.org)
- [opencv-python](https://pypi.org/project/opencv-python/)
- [pandas](https://pandas.pydata.org)
- [plotly](https://plotly.com/python/)
- [pydot](https://pypi.org/project/pydot/)
- [pyscf](https://pyscf.org)
- [qiskit-machine-learning](https://github.com/Qiskit/qiskit-machine-learning)
- [qiskit](https://qiskit.org/documentation/getting_started.html)
- [rasterio](https://rasterio.readthedocs.io/en/latest/)
- [scikit-learn](https://scikit-learn.org/stable/)
- [scipy](https://www.scipy.org)
- [seaborn](https://seaborn.pydata.org)
- [snapml](https://pypi.org/project/snapml/)
- [SQLAlchemy](https://www.sqlalchemy.org)
- [sympy](https://www.sympy.org/en/index.html)
- [tensorboard](https://www.tensorflow.org/tensorboard/get_started)
- [tensorflow](https://www.tensorflow.org/learn)
- [torch](https://pytorch.org)
- [torchaudio](https://pypi.org/project/torchaudio/)
- [torchvision](https://pypi.org/project/torchvision/)
- [xgboost](https://xgboost.readthedocs.io/en/latest/)

# dependecies:
- OS: Ubuntu
