curl -s -o docker-compose.yml https://raw.githubusercontent.com/medic/cht-upgrade-service/main/docker-compose.yml
curl -s -o cht-core.yml https://staging.dev.medicmobile.org/_couch/builds_4/medic%3Amedic%3Amaster/docker-compose/cht-core.yml
curl -s -o cht-couchdb.yml https://staging.dev.medicmobile.org/_couch/builds_4/medic%3Amedic%3Amaster/docker-compose/cht-couchdb.yml

docker compose up -d

echo ""
echo ""
echo " -------------------------------------------------------- "
echo ""
echo "  CHT instance starting! This may take a while (especially if this is the first time)."
echo ""
echo "  You can monitor the progress by running:"
echo "    docker compose logs -f"
echo ""
echo "  Once it's started, you can access the CHT at:"
echo ""
echo "    https://medic:password@localhost:443/ (CHT)"
echo "    https://medic:password@localhost:443/_utils/ (Fauxton)"
echo ""
echo "    Login: ${COUCHDB_USER}"
echo "    Password: ${COUCHDB_PASSWORD}"
echo ""
echo " -------------------------------------------------------- "
