# Configurazione necessaria

## Inizializzazione sistema
```
$ sudo apt update
$ sudo apt upgrade
$ sudo apt install docker.io
$ sudo apt install docker-compose
$ sudo usermod -aG docker userName
```
## Avviare il servizio
```
$ sudo service docker start
```
## Avviare il docker-compose
```
$ sudo docker-compose up
```

## Esempi di utilizzo di un container

```
$ docker exec influxdb influx -execute 'show databases'
$ docker exec influxdb influx -execute 'select * from transmissionData' -database="iotlab"
```


## Come abilitare la connessione dal docker verso internet?

```
$ sudo nano /etc/default/docker
```

```
# Docker Upstart and SysVinit configuration file

# Use DOCKER_OPTS to modify the daemon startup options.
DOCKER_OPTS="--dns 208.67.222.222 --dns 208.67.220.220"
```

## Come utilizzarlo?

### Prerequisito

```
$ sudo chmod +x install.sh
```

### La prima volta

```
$ sudo ./install.sh
```

Successivamente andare sull'interfaccia esposta di node-red e settare correttamente user e password prese da The Things Network.

### Le successive

```
$ docker-compose up
```

### Per terminare 

```
$ docker-compose down
```
 
### Test MQTT broker

https://apps.microsoft.com/store/detail/mqttbox/9NBLGGH55JZG?hl=it-it&gl=it

###
