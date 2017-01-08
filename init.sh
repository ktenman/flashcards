#!bin/bash
docker cp $1:/src/db/cards.db /home/root;
docker stop $1 && docker rm $1;
docker rmi cs-flash-cards;
docker build . -t cs-flash-cards;
docker run -d -p 8000:8000 --name cs-flash-cards -v /home/root:/src/db cs-flash-cards;
docker volume rm $(docker volume ls -qf dangling=true);