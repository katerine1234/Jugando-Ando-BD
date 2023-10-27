<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Agradecimiento por Donación</title>
        <style>
            body, html {
                margin: 0;
                padding: 0;
                height: 100%;
                font-family: Arial, sans-serif;
                background: url("https://i.pinimg.com/736x/9d/b5/e6/9db5e691519064353d0d46f83d04844d.jpg") no-repeat center center fixed;
                background-size: cover;
            }

            .container-agradecimiento {
                text-align: center;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                color: #fff;
            }

            .container-agradecimiento h2 {
                font-size: 50px;
                margin-bottom: 20px;
            }

            .boton-regresar {
                display: inline-block;
                padding: 10px 20px;
                background-color: #ff4500;
                color: #fff;
                text-decoration: none;
                border-radius: 5px;
                font-size: 20px;
                transition: background-color 0.3s ease;
            }

            .boton-regresar:hover {
                background-color: #e03e00;
            }

        </style>

    </head>
    <body>
        <div class="container-agradecimiento">
            <div>
                <h1><strong>¡Registro Exitoso!</strong></h1>
                <p>Gracias por registrarte. Tu registro se ha completado con éxito.</p>
                <a href="index.jsp" class="boton-regresar">Regresar a inicio</a>
            </div>

        </div>
    </body>
</html>
