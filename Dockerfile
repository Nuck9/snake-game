# Usa una imagen base de Nginx
FROM nginx:alpine

# Copia el archivo index.html al directorio de Nginx
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html
COPY script.js /usr/share/nginx/html

# Cambia la configuración de Nginx para escuchar en el puerto 2500
RUN sed -i 's/listen       80;/listen       2500;/g' /etc/nginx/conf.d/default.conf

# Expone el puerto 2500
EXPOSE 2500
