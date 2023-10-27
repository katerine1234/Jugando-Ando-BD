<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="newcss.css" type="text/css">
    </head>
    <body>
        <div class="container">
            <header class="header">
                <h1 id="title" class="text-center">JUGANDO ANDO</h1>
                <p id="description" class="description text-center">DONA UN JUGUETE Y REGALA MILLONES DE SONRISAS</p>
            </header>
            <form action="newjsp.jsp" method="post" accept-charset="UTF-8">
                <div class="form-group">
                    <label id="descripcion-label" for="descripcion">Descripcion del juguete</label>
                    <input type="text" name="descripcion" id="name" class="form-control" placeholder="ingresa la descripcion" required>
                </div>
                <div class="form-group">
                    <label id="fechaNacimiento-label" for="fechaNacimiento">fecha de entrega </label>
                    <input type="date" name="fechaNacimiento" id="name" class="form-control" placeholder="fecha de entrega" required>
                </div>
                <div class="form-group">
                    <label id="number-label" for="number">Cuantos juguetes desea donar <span class="clue"></span></label>
                    <input type="number" name="cantidad" id="number" min="1" max="99" class="form-control" placeholder="Ingrese la cantidad de juguetes que desea donar">
                </div>
                <div class="form-group">
                    <p>A qué fundación desea donar el juguete</p>
                    <select id="dropdown" name="role" class="form-control" required>
                        <option disabled selected value>Seleccione una opción</option>
                        <option value="Bienestar familiar">Bienestar familiar</option>
                        <option value="UNICEF">UNICEF</option>
                        <option value="Infancia sin fronteras">Infancia sin fronteras</option>
                        <option value="Ayuda en Acción">Ayuda en Acción</option>
                        <option value="TELETON">TELETON</option>
                    </select>
                </div>
                <div class="form-group">
                    <p>¿Desea agregar algún comentario o sugerencia acerca de nuestro proyecto?</p>
                    <textarea id="comments" class="input-textarea" name="comentarios" placeholder="Por favor ingrese su comentario"></textarea>
                </div>
                <div class="form-group">
                    <button type="submit" id="submit" class="submit-button">DONAR</button>  
                </div>
            </form>
        </div> 
    </body>
</html>