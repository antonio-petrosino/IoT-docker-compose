#!/bin/sh
sudo service docker start
sudo docker-compose up -d
docker exec -it influxdb influx -execute "CREATE DATABASE iotlab"
docker exec -it nodered npm install --prefix /data node-red-contrib-influxdb
docker-compose restart nodered
