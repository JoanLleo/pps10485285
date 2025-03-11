En este apartado, vamos a realizar un XSS en un apartado de la web que nos permite crear mensajes en un foro como si fuera un chat. Al almacenarse dicho comentario hasta su eliminación, si la entrada no esta segurizada, podemos ejecutar un XSS en dicho foro y como se almacenará, este se ejecutará siempre que un usuario acceda a dicho foro. El comando que vamos a ejecutar es es siguiente:

    <ImG src=x onerror="alert(document.cookie)">

![Imagen Entrada](./images/Script.png)

Y tras almacenarse en el chat y acceder al foro desde otro navegador con otro usuario, este codigo malicioso se va a ejecutar y obtendremos la siguiente alerta:

![Alerta Usuario 2](./images/AccesoUsuario2.png)
