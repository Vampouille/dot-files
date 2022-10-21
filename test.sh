#!/bin/bash

docker build -t vampouille/dot-file .
docker run -ti vampouille/dot-file
