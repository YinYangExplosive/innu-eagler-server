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

# 自作プラグインをMinecraftのpluginsフォルダへコピー
mkdir -p /data/plugins
cp -n /plugins/*.jar /data/plugins/ 2>/dev/null || true

echo "=== Custom plugins installed ==="
ls -lh /data/plugins/

exec /image/scripts/start "$@"
