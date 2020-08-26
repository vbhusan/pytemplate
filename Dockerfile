# Pull base image
FROM python:3.6

# SET ENVIRONMENT VARIABLES
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# SET WORK DIRECTORY
WORKDIR /bdbpro

# install dependencies
COPY Pipfile Pipfile.lock /bdbpro/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /bdbpro/
