# Snake Game

Esta es una aplicación web del juego de la serpiente, desarrollada en HTML, CSS y JavaScript.

## Descripción

La aplicación consiste en un juego clásico de la serpiente, donde el jugador controla una serpiente que se mueve a lo largo de la pantalla. El objetivo es comer la comida que aparece aleatoriamente en la pantalla sin chocar contra las paredes o contra el cuerpo de la serpiente.

## Instalación en Docker
1. Se actualiza. $sudo apt update
2. Se instala el docker. $sudo apt install docker-compose -y
3. Se verifica que no se este usando el puerto 2500 en ningun otro docker. $sudo docker ps $sudo docker stop ID
4. Se clona el repositorio. $git clone https://github.com/Nuck9/snake-game
5. cd a la carpeta del repositorio. $cd snake-game
6. Se ejecuta el dockerfile. $sudo docker build -t snake .
7. Se ejecuta el docker en el puerto 2500. $sudo docker run -d -p 2500:2500 snake

## Uso

1. Abre el navegador web y ingresa mediante tu ip y el puerto 2500
2. Presiona las teclas de flecha para controlar la dirección de movimiento de la serpiente.
3. Intenta comer la comida sin chocar contra las paredes o contra el cuerpo de la serpiente.
4. El juego termina cuando la serpiente choca.


## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.
