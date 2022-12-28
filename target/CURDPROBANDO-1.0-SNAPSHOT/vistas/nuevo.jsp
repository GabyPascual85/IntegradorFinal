<%-- 
    Document   : nuevos
    Created on : 13/12/2022, 10:46:46
    Author     : Gabriela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <link href="css/style.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/cf77f5e345.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        
        <div class="container" style="background-color: pink">
                 
            <nav class="navbar background-color:pink">
           
                 <div class="container-fluid">
                 <a class="navbar-brand" href="http://localhost:8080/CRUDPROBANDO/SociosController">
                     <img src="vistas/gym.jpg" alt=""><h1 style="color: black; margin-left: 150px" class="d-inline-block align-text-top"><u>AÑADIR SOCIO</u></h1>
            </a>
            
        </div>
            </nav>
            
                 <br>
                 <br>
                 
            
                <div class="row" >
                    <form class="p-4" method="POST" action="SociosController?accion=insert">
                        <div class="mb-2">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control " id="nombre" name="nombre" required>
                        </div>
                          <div class="mb-2">
                            <label for="apellido" class="form-label">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" required>
                          </div>
                          <div class="mb-2">
                            <label for="direccion" class="form-label">Direccion</label>
                            <input type="text" class="form-control" id="direccion" name="direccion" required>
                           
                          </div>
                          <div class="mb-2">
                            <label for="localidad" class="form-label">Localidad</label>
                            <input type="text" class="form-control" id="localidad" name="localidad" required>
                           
                          </div>

                          <div class="mb-2">
                            <label for="fnac" class="form-label" >Fecha Nacimiento</label>
                            <input type="date" class="form-control" id="fnac" name="fnac" required>                          
                        
                          </div> 
                        <div class="mb-2">
                            <label for="mail" class="form-label" >E-Mail</label>
                            <input type="text" class="form-control" id="mail" placeholder="nombre@ejemplo.com" name="mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"  required>                          
                       
                        </div>  
                        <div class="mb-2">
                            <label for="telefono" class="form-label" >Telefono</label>
                            <input type="text" class="form-control" id="telefono" name="telefono" required>                          
                       
                        </div>                
                                               
                        <button type="submit" class="btn btn-outline-primary">Añadir <i class="fa-regular fa-floppy-disk"></i></button>
                        <button type="reset" class="btn btn-outline-danger">Reset <i class="fa-solid fa-rotate-left"></i></button>

                    </form>                
                </div>
               
       
                 </div>
    </body>
   
    
</html>