![Build status](https://travis-ci.com/tpphu/golang-training-cicd.svg?branch=master)

# CI/CD with Travis CI and Heroku

## What is Travis CI

Travis CI is a hosted, distributed continuous integration service used to build and test software projects hosted at GitHub.

In this course we will use it to build our projects follow CI/CD pattern 

## What is Heroku

Heroku is a cloud platform as a service supporting several programming languages. Heroku, one of the first cloud platforms, has been in development since June 2007, when it supported only the Ruby programming language, but now supports Java, Node.js, Scala, Clojure, Python, PHP, and Go

In this course, we will use it to deploy our projects follow CI/CD pattern.

## Installation

### Install Travis CI

Visit Travis CI's [documents](https://docs.travis-ci.com/) for more detail.

Firstly, you need to understand how to build a public project hosted on Github using Travis CI.

For `go` project

1. Let create a `.travis.yml`

```yml
language: go
go: 
 - 1.12.3

script:
 - go test -v ./...
```

2. Follow the official guide to build the code

### Install Heroku

Visit [DevCenter of Heroku](https://devcenter.heroku.com/categories/reference) for more detail

Firstly, easy way to install Heroku CLI tool is using Nodejs on developer mode.

```shell
npm install -g heroku
```

### Running Locally

```shell
$ git clone https://github.com/tpphu/golang-training-cicd.git
$ cd golang-training-cicd
$ go build -o bin/golang-training-cicd -v .
$ heroku local
```

> Your app should now be running on localhost:5000.

## Using Travis to deploy to Heroku

Use `heroku auth:token` for shot-term key, or `heroku authorizations:create` for long-term key.

```yml
language: go
go: 
 - 1.12.3

script:
 - go test -v ./...
deploy:
  provider: heroku
  app: tranquil-gorge-15185
  api_key:
    secure: "b63df6f4-cfdd-436e-8b42-213d1b59559b"
```

## Demo

All source code is available [here](https://github.com/tpphu/golang-training-cicd)

> How to understand demo code

- `.travis.yml` is the file used by Travis CI to build and deploy
- `heroku.yml` is the file used by Heroku to describle the project
- `Procfile` is the file used by Heroku to start the project
- `Dockerfile` is the file used by Heroku to build golang project on the Heroku server


