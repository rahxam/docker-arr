#!/usr/bin/env bash
# Deployt alle Stacks dieses Repositories - mit Health-Gate und Rollback.
# Die eigentliche Logik liegt zentral in docker-infra/bin/.
set -euo pipefail
BASE="$(cd "$(dirname "$0")" && pwd)"
SHARED=/mnt/fast/system/docker-infra/bin/deploy-all.sh
if [[ ! -x "$SHARED" ]]; then
  echo "FEHLER: $SHARED nicht gefunden - ist docker-infra ausgecheckt?" >&2
  exit 1
fi
exec "$SHARED" "$BASE"
