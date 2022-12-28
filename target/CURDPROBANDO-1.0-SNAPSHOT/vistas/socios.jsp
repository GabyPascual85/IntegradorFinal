<%-- 
    Document   : socios
    Created on : 12/12/2022, 13:37:29
    Author     : Gabriela
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="java.util.List"%>
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
        <link rel="stylesheet" type="text/css" href="vistas/style.css">
    </head>
    <body>
               
        
             <div class="container" style="background-color: pink">
                 
                 <nav class="navbar background-color:pink">
                    <div class="container-fluid">
                     <a class="navbar-brand" href="#" >
                         <img src="vistas/gym.jpg" alt=""><h1 style="color: black; margin-left: 150px" class="d-inline-block align-text-top"><u>LISTA DE SOCIOS</u></h1>
                    </a>
            
                    </div>
                </nav>
                 
                 <br>
                 <br>
                 
                 
            <div class="row">   

                           
                <table class="table table-striped">
                    <thead>
                        
                    <th class="table-primary">Id</th>
                    <th class="table-secondary">Nombre</th>
                    <th class="table-success">Apellido</th>
                    <th class="table-danger">Dirección</th>
                    <th class="table-warning">Localidad</th>
                    <th class="table-info">Fnac</th>
                    <th class="table-warning">Mail</th>
                    <th class="table-danger">Teléfono</th>
                    <th class="table-secondary">Modificar</th>
                    <th class="table-success">Eliminar</th>
                    
                </thead>
                    
                <%
                    List<Socios> resultado=null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                                for(int i=0;i<resultado.size();i++)
				{
				String ruta="SociosController?accion=modificar&id="+resultado.get(i).getIdSocio();	
				String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getIdSocio();
				%>   
                    
                            
                        
                    <tr>
                        
                         <td><%=resultado.get(i).getIdSocio()%></td>
                         <td><%=resultado.get(i).getNombre()%></td>
                         <td><%=resultado.get(i).getApellido()%></td>
                         <td><%=resultado.get(i).getDireccion()%></td>
                         <td><%=resultado.get(i).getLocalidad()%></td>
                         <td><%=resultado.get(i).getFnac()%></td>
                         <td><%=resultado.get(i).getTelefono()%></td>
                         <td><%=resultado.get(i).getMail()%></td>
                         <td class="text-center"><a href=<%=ruta%>> <i class="fa-solid fa-pencil"></i></a></td>
			 <td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-eraser"></i></a></td>
                        
                        
                    </tr>
                    <%
                    }
                    %>
        </table>
            
            
          </div>
          <a class="btn btn-outline-primary col-4 m-4" href="SociosController?accion=nuevo">Agregar socio <i class="fa-regular fa-floppy-disk"></i></a>  
        </div>
            
            
           
        
        
    </body>
</html>

