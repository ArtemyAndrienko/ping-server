# ping-server

In response to GET, returns date/time string.

## Technologies
- Python 3
- Docker

## To Run without Docker

`pipenv shell`

`python ping-server.py`

In browser `http://localhost:8000`


## To run with Docker stand-alone (i.e. can access it from host)

`docker build -t pngan/ping-server .`

`docker run -it  --network host pngan/ping-server` # Note: Network set to 'host'

## To publish docker image to Docker Hub
`docker login` # give docker credentials
`docker search pngan` #  list docker images in docker hub
`docker push pngan/ping-server` # push image to docker hub

## Using github actions to build docker image



## Generate requirements file
`pipenv shell`

`pip freeze > requirements.txt`

## Add a python module
`pipenv shell`

`pip install <module>`
