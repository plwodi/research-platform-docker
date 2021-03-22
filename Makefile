

build:
	docker build -t research-platform Container/.

buildm1:
	docker build --platform linux/amd64 -t research-platform Container/.