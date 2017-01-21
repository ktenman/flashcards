#!bin/bash
#git pull
docker stop ti-flash-cards && docker rm ti-flash-cards;
docker rmi ti-flash-cards;
docker build . -t ti-flash-cards;
docker run -d -p 80:8000 --name ti-flash-cards -v `pwd`:/src/db ti-flash-cards;
docker volume rm $(docker volume ls -qf dangling=true);
