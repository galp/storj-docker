A docker container with a jstor daemon.

```
docker run  -v/data/:/root/.config/storjshare - storj:latest
```


create a share config


```
docker exec -ti fe91259e3893  storjshare create --sjcx 1XXXLarGjWRMwMG18VCpqK3zzXXXX
```

edit the config file generated in /data/storjshare/configs and start the share


```
docker exec -ti fe91259e3893 storjshare start -c ~/data/storjshare/130fb5d4533e9beeae30913b87552f105b4caaf7.json
```


