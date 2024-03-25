# python:3.8-alpine is the image name,
# where python is the official Python Docker image, 3.8 is the tag specifying the Python version, and -alpine indicates that the base operating system of the image is Alpine Linux, 
# which is a lightweight Linux distribution.
# it will pull the Python 3.8 image from the Docker Hub registry and create a container from it.
FROM python:3.8-alpine 

# copy the current environment to the container, and create a folder name for it
COPY . /app

# set the working directory to /app
WORKDIR /app

# run all the dependencies in the requirements.txt file
RUN pip install -r requirements.txt

# the command that executes the file that we want to run
CMD python app.py
