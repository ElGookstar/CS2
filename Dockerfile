# Node.js mit minimalem Linux als Basis
FROM node:18-bullseye
# Arbeitsverzeichnis im Container
WORKDIR /app
# Package-Dateien zuerst kopieren und Dependencies installieren
COPY package*.json ./

RUN npm install
# Restlichen Code kopieren
COPY . .
# Startkommando
CMD ["node", "server.js"]
# Port öffnen
EXPOSE 3000
