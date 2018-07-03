# Node Build Agent

https://hub.docker.com/r/lostthetrail/node-build-agent/

## build
```sh
docker build -t node-build-agent:latest .
```

## publish
```sh
docker tag node-build-agent:latest lostthetrail/node-build-agent:latest
docker publish lostthetrail/node-build-agent:latest
```