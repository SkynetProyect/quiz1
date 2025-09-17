FROM node:22-alpine # voy a tomar una imagen de linux alpine la cual va a contener node instalado

ENV PORT=4000 #defino como variable de entorno el puerto 4000

WORKDIR /usr/src/app # voy a usar el repositorio de trabajo de mi imagen en /usr/src/app

# Install dependencies
COPY package.json /usr/src/app/ # copio el archivo package.json de mi proyecto actual y lo muevo a la ruta de trabajo de mi contenedor
RUN npm install # instalo las dependencias de npm

# Copy source
COPY server.js /usr/src/app # copio el archivo server.js al directorio de trabajo 

EXPOSE $PORT # expongo para que el puerto de la aplicacion sera le 4000
CMD [ "npm", "start" ] # corro el comando en la terminal del contenedor para iniciar la aplicacion
