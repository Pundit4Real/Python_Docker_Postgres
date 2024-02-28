# The official python base image for alpine linux
FROM python:3.12-alpine

#setting the non-empty value to allow for realtime data display.
ENV PYTHONUNBUFFERED=1

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

# Set the working directory inside the container
WORKDIR /django

# Copy the requirements.txt file into the container
COPY requirements.txt requirements.txt

# install the dependencies in the requirements.txt
RUN pip install --no-cache-dir -r requirements.txt



