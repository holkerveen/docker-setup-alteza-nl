# Docker setup voor alteza.nl

# TL;DR
Bouw frontend
```bash
docker-compose run build yarn
docker-compose run build yarn build
```

```bash
docker-compose up
```

Dan, database importeren:

```bash
cat wp-database.sql | mysql -hlocalhost -uroot -p1234
```

Zorg ervoor dat in wp_options de correcte waardes zijn ingevuld
```mysql
UPDATE wp_options SET option_value='http://localhost:8080' WHERE option_name IN ('home','siteurl')
```

Backend zou vervolgens bereikbaar moeten zijn op http://localhost:8081 en frontend op http://localhost:8080


# Bouwen voor productie
docker-compose run -e REACT_APP_API_ENDPOINT=<prod-endpoint> -e REACT_APP_GOOGLE_MAPS_API_KEY=<prod-key> build yarn build
