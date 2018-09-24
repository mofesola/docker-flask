# Python Restful App with Docker
This app runs python flask within a docker container. The default environment variables in the `.env` file should be 
sufficient for most purposes but can be altered to suit your usecase.

## How to run
Make sure you have docker running on your machine with docker-compose and run the following:
```bash
docker-compose up --build
```

The `app` directory is mounted to the docker container using docker volumes so you can make and see changes to your 
code while developing without having to restart the container.

Have fun!
