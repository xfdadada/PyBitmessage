# Use an official Python runtime as a parent image
FROM ubuntu:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN apt-get update && apt-get -y install gcc g++ vim python openssl libssl-dev git python-setuptools python-pyopencl python-msgpack python-qt4

# Run app.py when the container launches
CMD ["python", "setup.py install"]
