$ sudo apt update

$ sudo apt install docker.io

$ sudo usermod -aG docker userName

$ sudo service docker start

$ sudo docker-compose up

Esempi di utilizzo di un container

$ docker exec influxdb influx -execute 'show databases'

$ docker exec influxdb influx -execute 'select * from transmissionData' -database="iotlab"


Come abilitare la connessione dal docker verso internet?

$ sudo nano /etc/default/docker

# Docker Upstart and SysVinit configuration file

# Use DOCKER_OPTS to modify the daemon startup options.
DOCKER_OPTS="--dns 208.67.222.222 --dns 208.67.220.220"


$ sudo chmod +x install.sh

La prima volta
 
$ sudo ./install.sh

Le successive

$ docker-compose up

Per terminare 

$ docker-compose down

 
