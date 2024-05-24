# Usa una imagen base de Ubuntu 22.04
FROM ubuntu:22.04

# Actualiza el sistema y instala Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean

# Copia los archivos de la aplicación al directorio de Nginx
COPY . /var/www/html

# Cambia la configuración de Nginx para escuchar en el puerto 2500
RUN sed -i 's/listen       80;/listen       2500;/g' /etc/nginx/sites-available/default

# Expone el puerto 2500
EXPOSE 2500

# Comando para iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
