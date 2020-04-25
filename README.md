# googleimagesdownload-docker

Run [googleimagesdownload](https://github.com/hardikvasa/google-images-download) using Docker.  
Downloaded images will be saved in the `downloads` directory.

## Pre-requisites

* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)

## Usage

e.g.
```
$ docker-compose run --rm download -ri -l 1000 -k "KEYWORD"
```

More options: https://google-images-download.readthedocs.io/en/latest/arguments.html
