FROM python:3.13 AS machine-learning-env

LABEL maintener="Alexandre ANDRE"

ENV PIP_ROOT_USER_ACTION=ignore

# Update packages
RUN apt-get update

# Install Node.js
RUN apt-get update && apt-get install -y nodejs npm

# Copy the requirements file
COPY requirements.txt /tmp/requirements.txt

# Update pip
RUN pip install --upgrade pip

# Install packages
RUN pip install -r /tmp/requirements.txt

# Set wordip path
WORKDIR /home/app

# Expose port
EXPOSE 8888

# Command
CMD jupyter lab --ip=* --port=8888 --allow-root --no-browser