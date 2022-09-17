#Imagen base
FROM node:18-alpine3.15

#Creamos un directorio de trabajo
RUN mkdir app

#Asignamos un espacio de trabajo
WORKDIR /app

#Copiamos nuestos documentos
COPY . .

#Instalamos
RUN npm install

#Exponemos el puerto
EXPOSE 3000

#Ejecutamos la app
CMD ["npm","run","dev","--","--host"]
