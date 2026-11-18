#!/usr/bin/env bash
set -euo pipefail

log() { echo "[entrypoint] $*" >&2; }

TASK="${1:-}"

case "$TASK" in
  ping)
    exec python3 /opt/solution/ping.py
    ;;
  T2|T3|T4|T5)
    log "Задача $TASK ещё не реализована"
    exit 0
    ;;
  *)
    log "Неизвестная команда: '$TASK'"
    exit 2
    ;;
esac
