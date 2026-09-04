FROM itzg/minecraft-server:java17

COPY --chmod=755 scripts/render-start.sh /render-start.sh
COPY render-world.tar.gz /render-world.tar.gz

# 自作プラグイン
COPY plugins /plugins

ENV COPY_CONFIG_DEST=/data

ENTRYPOINT ["/render-start.sh"]
