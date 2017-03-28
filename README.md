## A docker container with a jstor daemon.

### build 

```docker build -t jstor:latest . ```


### run the daemon
```
docker run -d --restart always  -v/data/:/root/.config/storjshare -p4000:4000 -p4001:4001 -p4002:4002 -p4003:4003  storj:latest
```

### configure
create a share config if you don't have one. You need a payment address.


```docker exec -ti fe91259e3893  storjshare create --sjcx 1XXXLarGjWRMwMG18VCpqK3zzXXXX ```


edit the config file generated in /data/storjshare/configs if required 

### start the share

```
docker exec -ti fe91259e3893 storjshare start -c ~/data/storjshare/130fb5d4533e9beeae30913b87552f105b4caaf7.json
```

### is it working?

```docker exec -ti fe91259e3893  storjshare status  #get the node id from here```


```docker exec -ti fe91259e3893  storjshare logs -i $NODEID  ```
