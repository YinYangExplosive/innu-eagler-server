FROM itzg/minecraft-server:java17

COPY --chmod=755 scripts/render-start.sh /render-start.sh
COPY render-world.tar.gz /render-world.tar.gz

ENV COPY_CONFIG_DEST=/data

ENTRYPOINT ["/render-start.sh"]
