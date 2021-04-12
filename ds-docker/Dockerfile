#start from the latest base-docker release
FROM plwodi/base-docker:latest

#install data visualisation components
RUN pip install matplotlib seaborn plotly==4.14.3 pydot rasterio numpy sympy lale

#install data manipulation components
RUN pip install imageio opencv-python SQLAlchemy pandas h5py

#install JupyterLabs
RUN pip install jupyterlab_widgets
RUN pip install -Iv jupyterlab==3.0.10

RUN jupyter lab build

#create directory to map local hard drive
WORKDIR /computer

#clone any relevant Github repositories
RUN git clone https://github.com/odpi/OpenDS4All.git /computer/opends4all

#welcome messages and instructions for the user
RUN echo "echo -e \"\n🔆 Welcome to the data science docker container\"\n" >>~/.bashrc
RUN echo "echo -e \"\n🚀 This is a suggested minimum set of components needed to get started with data science\n\"" >>~/.bashrc

RUN echo "echo -e \"The following components have been installed in this container:\n\"" >>~/.bashrc

RUN echo "echo -e \"matplotlib, seaborn, plotly, pydot, rasterio, numpy, sympy, lale\"\n" >>~/.bashrc
RUN echo "echo -e \"imageio, opencv-python, SQLAlchemy, pandas, h5py\"\n" >>~/.bashrc

RUN echo "echo -e \"\nStarting Jupyter Lab...\"\n" >>~/.bashrc
RUN echo "jupyter lab --allow-root --no-browser --ip=0.0.0.0  &>/dev/null &" >>~/.bashrc
RUN echo "sleep 4" >>~/.bashrc
RUN echo "echo -e \"\n📺 You can open Jupyter Lab using the next URL:\n\"" >>~/.bashrc
RUN echo "jupyter server list | egrep -o 'http://[^ ]+'" >>~/.bashrc

RUN echo "echo -e \"\nIf no URL appear above run the following command from within the container:\n\"" >>~/.bashrc
RUN echo "echo -e \"jupyter server list | egrep -o 'http://[^ ]+'\"" >>~/.bashrc
RUN echo "echo -e \"\n\"" >>~/.bashrc