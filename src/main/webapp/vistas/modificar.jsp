<%-- 
    Document   : modificar
    Created on : 13/12/2022, 10:45:16
    Author     : Gabriela
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
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
        <script src="https://kit.fontawesome.com/cf77f5e345.js" crossorigin="anonymous"></script>
         <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    
    <body>        
         
            <div class="container" style="background-color: pink">
                 
            <nav class="navbar background-color:pink">
            <div class="container-fluid">
            <a class="navbar-brand" href="http://localhost:8080/CRUDPROBANDO/SociosController">
                <img src="vistas/gym.jpg" alt=""><h1 style="color: black; margin-left: 150px" class="d-inline-block align-text-top"><u>MODIFICAR SOCIO</u></h1>
            </a>
            
        </div>
            </nav>
                
                        <div class="row" >
                    <%
				String id=request.getParameter("id");
				int mid;
				mid=Integer.parseInt(id);				
				Socios resultado=null;
				SociosDAO  socio=new SociosDAO();
				resultado=socio.mostrarSocio(mid);				
		    %>
                    
                    <form class="p-5" method="POST" action="SociosController?accion=actualizar">
                         <div class="mb-2">
                            <label for="id" class="form-label">id</label>
                            <input type="text" class="form-control" id="id" name="id" readonly="true" value=<%=resultado.getIdSocio() %> >                          
                        </div> 
                        <div class="mb-2">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre() %>   >                       
                        </div> 
                        <div class="mb-2">
                            <label for="apellido" class="form-label">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido() %>   >                       
                        </div> 
                         <div class="mb-2">
                            <label for="direccion" class="form-label">Direccion</label>
                            <input type="text" class="form-control" id="direccion" name="direccion"value=<%=resultado.getDireccion() %>  >                          
                        </div> 
                         <div class="mb-2">
                            <label for="localidad" class="form-label">Localidad</label>
                            <input type="text" class="form-control" id="localidad" name="localidad" value=<%=resultado.getLocalidad() %>   >                          
                        </div> 
                          <div class="mb-2">
                            <label for="fnac" class="form-label">Fecha Nac</label>
                            <input type="date" class="form-control" id="fnac" name="fnac" value=<%=resultado.getFnac() %>  >                          
                        </div> 
                        <div class="mb-2">
                            <label for="mail" class="form-label">E-Mail</label>
                            <input type="text" class="form-control" id="mail" name="mail" value=<%=resultado.getMail()%>  >                          
                        </div>  
                        <div class="mb-2">
                            <label for="telefono" class="form-label">Telefono</label>
                            <input type="text" class="form-control" id="telefono" name="telefono" value=<%=resultado.getTelefono()%> >                          
                        </div> 
                        
                        <br>
                        
                      
                        <button type="submit" class="btn btn-outline-primary">Modificar <i class="fa-solid fa-pencil"></i></button>
                        
                        </div>                        

                        
                    </form>    
                        
                    
                        
                     </div>
         
    </body>
</html>