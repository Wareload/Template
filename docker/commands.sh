# run
docker run -p 80:80 -v ${PWD}:/workspace image
docker run -it -p 80:80 -v ${PWD}:/workspace image bash
#exec
docker exec -it container_name /bin/sh
#build
docker build -t --target builder image:latest --no-cache --progress=plain .
#docker compose
docker compose up --build -d --force-recreate --remove-orphans --profile db
docker compose down
