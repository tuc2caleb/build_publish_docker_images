# Dockerized Multi-Container Application Deployment with Terraform, GitHub Actions, and AWS

## Overview

This project demonstrates the deployment and orchestration of a multi-container application using Amazon ECR, Amazon EC2, Docker, Terraform, and GitHub Actions. The infrastructure is provisioned with Terraform, and GitHub Actions automate the build and push of Docker images to Amazon ECR. The application consists of multiple containers, including MySQL and three instances of an application, each with a different background color.

## Table of Contents

- [Infrastructure](#infrastructure)
- [Build Automation](#build-automation)
- [Running Containers](#running-containers)
- [Connectivity Tests](#connectivity-tests)
- [Accessing Applications](#accessing-applications)
- [Container Communication](#container-communication)

## Infrastructure

Infrastructure is provisioned using Terraform. The following resources are created:

- Amazon ECR repository for storing Docker images.
- Amazon EC2 instance to host containers.

### Terraform Setup

Ensure you have Terraform installed. In the terminal, navigate to the `terraform` directory and run:

```bash
terraform init
terraform apply
```

*Install the required MySQL package*

```sudo apt-get update -y sudo apt-get install mysql-client -y```

*Running application locally*
`pip3 install -r requirements.txt sudo python3 app.py`

Building and running 2 tier web application locally
Building mysql docker image
'docker build -t my_db -f Dockerfile_mysql .' 

Building application docker image
`docker build -t my_app -f Dockerfile .

Running mysql
`docker run -d -e MYSQL_ROOT_PASSWORD=pw  my_db`

*Get the IP of the database and export it as DBHOST variable*
`docker inspect <container_id>`

Example when running DB runs as a docker container and app is running locally

```bash
export DBHOST=127.0.0.1
export DBPORT=3307
```

*Example when running DB runs as a docker container and app is running locally*

```bash
export DBHOST=172.17.0.2
export DBPORT=3306
export DBUSER=root
export DATABASE=employees
export DBPWD=pw
export APP_COLOR=blue
```

*Run the application, make sure it is visible in the browse*

`docker run -p 8080:8080  -e DBHOST=$DBHOST -e DBPORT=$DBPORT -e  DBUSER=$DBUSER -e DBPWD=$DBPWD  my_app`

**This project template was created by Irina Geiman.**

[![OpenAI](https://github.com/igeiman13/clo835_fall2022_assignment1)](https://github.com/igeiman13/clo835_fall2022_assignment1)
