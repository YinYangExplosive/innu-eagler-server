FROM eclipse-temurin:17-jre

WORKDIR /server

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

RUN wget -O server.jar https://api.papermc.io/v2/projects/paper/versions/1.12.2/builds/1620/downloads/paper-1.12.2-1620.jar

RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java", "-Xms256M", "-Xmx256M", "-jar", "server.jar", "nogui"]
