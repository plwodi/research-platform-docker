from fedora
run yum install -y gcc
run yum install -y python3-devel
run yum install -y python3-pip
run ln -s /usr/bin/python3 /usr/bin/python
WORKDIR qiskit
run pip install qiskit
run pip install jupyterlab
