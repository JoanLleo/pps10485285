# 2.8-Weak Session ID

## LOW

En este apartado, podemos observar que nos indica que se genera una cookie llamada dvwaSession cada vez que el boton Generate es pulsado. Si accedemos a la visualización de cookies tras pulsar el button, podemos observar que tenemos un valor en la cookie:

![cookie](./images/2.8.1_Cookie1.png)

Y si pulsamos de nuevo sobre Generate, observamos que el valor de este aumenta en uno, no se genera uno nuevo:

![cookie](./images/2.8.2_Cookie2.png)

## MID

El apartado MID es similar al de LOW pero en este caso, se utiliza la variable time(), generando la coockie en base a la hora en la que se ha pulsado el botón de generar:

![cookie](./images/time.png)
