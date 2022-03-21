## Simple HTTP docker service that prints it's container ID

[![docker-celery](https://img.shields.io/badge/spy86-whoami-blue.svg)](https://cloud.docker.com/repository/docker/spy86/whoami) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Simple container which can be used to check container ID

## How to use ?

```
    $ docker run -d -p 8000:8000 --name whoami -t spy86/whoami
    736ab83847bb12dddd8b09969433f3a02d64d5b0be48f7a5c59a594e3a6a3541
    
    $ curl $(hostname --all-ip-addresses | awk '{print $1}'):8000
    I'm 736ab83847bb
```
