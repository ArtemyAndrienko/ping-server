FROM python:3.8-slim-buster
ADD . /app

RUN pip install -r app/requirements.txt

WORKDIR /app
CMD ["python", "ping-server.py", "-l", "0.0.0.0"]

# Important to listen to all ports  0.0.0.0, otherwise
# returns with connection refused (nothing listening on port)
# even if docker run port forwarding is used.
#
# More info: https://pythonspeed.com/articles/docker-connection-refused/