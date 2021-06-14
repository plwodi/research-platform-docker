# Setting up Jupyter Notebook without Docker

If you would like to run this environment natively on your computer without having to install Docker use the following steps.  These steps will assume a Linux environment.

## Install Python

```
sudo apt-get update
sudo apt-get install python3-pip python3-dev
```


## Create a Python Virtual Environment to run Jupyter

#### Upgrade pip and install virtualenv

```
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
```

#### Create your project directory

```
mkdir ~/project_directory
cd ~/project_directory
```

#### Create the Virtual Environment

```
virtualenv project_env
```

#### Activate the Virtual Environment

```
source project_env/bin/activate
```

## Install Jupyter

```
pip install jupyter
```

<!-- ## Install the packages

#### Install data visualisation components

```
RUN pip install matplotlib seaborn plotly==4.14.3 pydot rasterio
```

#### Install data manipulation components
```
RUN pip install imageio opencv-python SQLAlchemy pandas h5py
```

#### Install machine learning components
```
RUN pip install scikit-learn xgboost lightgbm scipy numpy torch torchvision torchaudio Keras snapml tensorflow tensorboard ipywidgets iprogress
RUN pip3 install elyra --use-deprecated=legacy-resolver
```

#### Install additional data science components
```
RUN pip install sympy lale
```

#### Install base Qiskit components
```
RUN pip3 install qiskit pyscf qiskit-machine-learning
```

#### Install base IBM PAIRS component(s)
```
RUN pip install ibmpairs
``` -->

## Run and access Jupyter

```
jupyter notebook
```

As a result of the `jupyter notebook` command you will see a localhost URL you can plug into your browser to access the Jupyter notebook environment.