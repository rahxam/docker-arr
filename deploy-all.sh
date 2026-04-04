#!/usr/bin/env bash
set -euo pipefail
BASE="$(cd "$(dirname "$0")" && pwd)"
for c in $(find "$BASE/stacks" -type f \(-name 'docker-compose.yml' -o -name 'docker-compose.yaml' -o -name 'compose.yml' -o -name 'compose.yaml' \) | sort); do
  [[ "$c" == *".swarm."* ]] && continue
  d=$(dirname "$c")
  if [[ -f "$d/.env.example" && ! -f "$d/.env" ]]; then
    echo "WARN: missing $d/.env"
    continue
  fi
  echo "Deploying $d"
  (cd "$d" && docker compose pull && docker compose up -d)
done
