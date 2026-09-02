#!/usr/bin/env bash
set -euo pipefail

: "${PORT:=10000}"
export SERVER_PORT="${PORT}"
export ENABLE_AUTOPAUSE="false"
export ENABLE_AUTOSTOP="false"

# 生成済みワールドを初回起動時に展開
if [ ! -d "/data/world" ]; then
    echo "=== Installing pre-generated world ==="
    tar -xzf /render-world.tar.gz -C /data
    echo "=== World installed ==="
fi

exec /image/scripts/start "$@"
