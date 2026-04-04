# docker-arr

Konsolidiertes Unraid-Repository (aus bestehenden Einzelstacks).

## Enthaltene Stacks
- arr

## Deploy
1. Docker Standalone nutzen (`docker compose`), kein Docker Swarm.
2. Docker-Netzwerk `traefik` muss existieren.
3. `stacks/arr/.env` aus `stacks/arr/.env.example` befuellen.
4. Unraid-Pfade in `.env` setzen (`FAST_ROOT`, `SLOW_ROOT`).
5. `./deploy-all.sh` ausfuehren.

## Unraid Hinweise
- Typische IDs: `PUID=99`, `PGID=100`.
- Typische Pfade:
	- `FAST_ROOT=/mnt/user/appdata`
	- `SLOW_ROOT=/mnt/user/data`
- Bei abweichender Disk-Struktur die beiden Root-Variablen in `.env` anpassen.

## Hinweis
Originale Einzelstacks bleiben unter /mnt/external/unraid-migration/stacks erhalten.
