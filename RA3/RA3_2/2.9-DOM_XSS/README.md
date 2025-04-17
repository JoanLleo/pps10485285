# 2.9-DOM XSS


En este apartado, se va a realizar la ejecución de al vulnerabilidad XSS para extraer la cookie de sesión. Esto es posible debido a que si accedemos a la ruta del apartado, se nos solicita seleccionar un idioma. Una vez seleccionado, podemos observar que la URL cambia a la ejecución del idioma seleccionado:

![Vulnerabilidad](./images/2.9.1_Vuln.png)

## LOW

Dicho esto, el siguiente paso a realizar va a ser cambiar el nombre del idioma por el escript para mostrar la cookie:

    <script>alert(document.cookie);</script>

Y tras realizar dicho cambio, obtenemos dicha cookie:

![XSS](./images/low.png)

## MID

Ahora, si cambiamos dicho comando por el siguiente, podemos observar que también podemos vulnerar el sistema:

    " ></option></select><img src=x onerror="alert(document.cookie)">

Este comando, indica que se va a mostrar una imagen cuyo source no existe. Como es el caso de que se de un error, hemos indicado que se ejecute una alerta con la información sobre la cookie de sesión:

![XSS](./images/2.9.2_XSS.png)

Y tras realizar la ejecución del mismo, podemos observar que se nos aparece una alerta con la cookie:

![XSS](./images/2.9.3_Cookie.png)
