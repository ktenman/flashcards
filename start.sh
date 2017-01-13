#!bin/bash
#docker cp cs-flash-cards:/src/db/cards.db `pwd`;
docker stop cs-flash-cards && docker rm cs-flash-cards;
docker rmi cs-flash-cards;
docker build . -t cs-flash-cards;
docker run -d -p 80:8000 --name cs-flash-cards -v `pwd`:/src/db cs-flash-cards;
docker volume rm $(docker volume ls -qf dangling=true);