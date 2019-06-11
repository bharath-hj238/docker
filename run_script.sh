#!/usr/bin/bash

echo "Login to Docker repo.. - [BAD PRACTICE]"
docker login --username bharathhj --password Docker@321

echo "Running docker compose for agent..!!.."
docker-compose up -d

echo "Logout of docker repo..."
docker logout
