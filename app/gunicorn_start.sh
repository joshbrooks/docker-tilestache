#!/bin/bash
gunicorn "TileStache:WSGITileServer('/webapps/tilestache/tilestache.cfg')" \
--name "gunicorn_tilestache_server" \
--workers 3 \
--user=root --group=root \
--bind=0.0.0.0:8080
