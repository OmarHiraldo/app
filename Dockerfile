# Usar una imagen base oficial de Node.js
FROM node:16

# Crear y establecer el directorio de trabajo
WORKDIR /usr/src/app

# Copiar el archivo package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto de los archivos de la aplicación
COPY . .

# Exponer el puerto en el que la app correrá
EXPOSE 8080

# Definir el comando para ejecutar la app
CMD ["node", "index.js"]
