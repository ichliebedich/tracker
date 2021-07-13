#!/bin/bash
cat ~/.HOMODEA_TOKEN | sudo docker login --username homodea --password-stdin
sudo docker tag $(sudo docker images -q | head -1) homodea/tracker:latest
sudo docker push homodea/tracker:latest