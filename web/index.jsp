<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tu Página Web</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="newcss1.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <nav>
            <a class="navbar-brand" href="http://endimension.com">
                <img src="https://i.ibb.co/GkbksbY/small.png" height="75" width="300"/>
            </a>
        </nav>

        <section class="login-block">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 login-sec">
                        <h2 class="text-center">Iniciar Sesión</h2>
                        <!-- Mostrar mensaje de error si el parámetro error existe en la URL -->
                        <%
                        String error = request.getParameter("error");
                        if ("true".equals(error)) {
                        %>
                            <p class="text-danger">Usuario o contraseña incorrectos.</p>
                        <%
                        }
                        %>

                        <form class="login-form" action="procesarInicio.jsp" method="post">
                            <div class="form-group">
                                <label for="usuario" class="text-uppercase">Usuario</label>
                                <input type="text" class="form-control" name="usuario" placeholder="Usuario">
                            </div>
                            <div class="form-group">
                                <label for="contrasena" class="text-uppercase">Contraseña</label>
                                <input type="password" class="form-control" name="contrasena" placeholder="Contraseña">
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input">
                                    <small>Recordar</small>
                                </label>
                                <button type="submit" class="btn btn-login float-right">Entrar</button>
                            </div>
                        </form>
                        <div class="copy-text">¿No tienes una cuenta? <a href="newhtml1.html">Regístrate</a></div>
                    </div>
                    <div class="col-md-8 banner-sec">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img class="d-block img-fluid" src="https://i.pinimg.com/originals/39/b8/9d/39b89d1f7f9de95cb4df4692bb390742.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <h2><strong>Bienvenidos a <br> JUGANDO ANDO</strong></h2>
                                            <p>Una plataforma diseñada para llevar sonrisas a nuestros niños </p>
                                        </div>	
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block img-fluid" src="https://i.pinimg.com/originals/39/b8/9d/39b89d1f7f9de95cb4df4692bb390742.jpg" alt="Second slide" width="100%">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <h2>JUGANDO ANDO</h2>
                                            <p> Proyecto que surgio al ver las necesidades de los niños menos favorecidos</p>
                                        </div>	
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block img-fluid" src="https://i.pinimg.com/originals/39/b8/9d/39b89d1f7f9de95cb4df4692bb390742.jpg" alt="Third slide" width="100%">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="banner-text">
                                            <h2>DONAR</h2>
                                            <p>La importancia de donar un juguete para que a su vez regalemos sonrisas</p>
                                        </div>	
                                    </div>
                                </div>
                            </div>	   

                        </div>
                    </div>
                </div>
        </section> 
    </body>
</html>
