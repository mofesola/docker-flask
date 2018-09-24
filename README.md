# Python Restful App with Docker
This app runs python flask within a docker container. The default environment variables in the `.env` file should be 
sufficient for most purposes but can be altered to suit your usecase.

## How to run locally
Make sure you have docker running on your machine with docker-compose and run the following:
```bash
docker-compose up --build
```

The `app` directory is mounted to the docker container using docker volumes so you can make and see changes to your 
code while developing without having to restart the container.

To access the HTTP endpoint, run:

```bash
curl http://localhost/v1/
curl http://localhost/v2/
```

for both version 1 and version 2 of the app respectively.

## How to deploy

Ensure that the following tools are available on the machine you intend to build/run/deploy this application
* Docker
* Docker Compose
* Kubectl
* A running Kubernetes Cluster

When you're all set with those, run the following from the project root:

```bash
./deploy.sh
```


Have fun!
