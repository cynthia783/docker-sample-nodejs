# utiliser une image Node.js

FROM node:18

# mettre le dossier de trarvail dans /projet_docker
WORKDIR /projet_docker

# copier le package.json et le package-lock.json
COPY package*.json ./

# Installer les dependances
RUN npm install 

# Copier le reste des fichiers
COPY . .

# exposer le port 3000
EXPOSE 3000

# Demarrer l'application
CMD ["npm","start"]