curl -s -o docker-compose.yml https://raw.githubusercontent.com/medic/cht-upgrade-service/main/docker-compose.yml
curl -s -o cht-core.yml https://staging.dev.medicmobile.org/_couch/builds_4/medic%3Amedic%3Amaster/docker-compose/cht-core.yml
curl -s -o cht-couchdb.yml https://staging.dev.medicmobile.org/_couch/builds_4/medic%3Amedic%3Amaster/docker-compose/cht-couchdb.yml

docker compose up -d