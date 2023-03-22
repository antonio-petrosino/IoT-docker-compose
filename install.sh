#!/bin/sh
sudo service docker start
sudo docker-compose up -d
docker exec -it influxdb influx -execute "CREATE DATABASE iotlab"
docker exec -it nodered npm install --prefix /data node-red-contrib-influxdb
docker exec grafana grafana-cli plugins install agenty-flowcharting-panel
docker-compose restart nodered
docker-compose restart influxdb
docker-compose restart grafana
