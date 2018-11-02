# mezapp

Simple [Dockerfile](./docker/Dockerfile) to start / run Mezzanine.

```shell
docker build -t mezapp docker

docker run -it --rm -p 8049:8000 -v /mnt/edata/edata/ontmezprj:/local mezapp 0.0.0.0:8000
```

First time it's run, or whenever it's run with an empty /local, it creates a folder
there, `mezapp`, with the default skeleton Mezzanine files.  You may need to
```shell
sudo chown -R `id -u`.`id -g` /that/folder
```
if it belongs to root.  
