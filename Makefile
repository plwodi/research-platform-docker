

build:
	docker build -t ismaelfaro/qiskit Qiskit/.

build_dev: build
	docker build -t ismaelfaro/qiskit_dev Qiskit_dev/.

push:
	docker push ismaelfaro/qiskit 

push_dev:
	docker push ismaelfaro/qiskit_dev   

