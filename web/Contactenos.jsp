<%-- 
    Document   : Contactenos
    Created on : 31/03/2015, 09:06:54 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Booking Routers</title>
<link type="text/css" rel="stylesheet" href="bootstrap-3.2.0-dist/bootstrap-3.2.0-dist/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="css/css.css" />
<link type="text/css" rel="stylesheet" href="css/Contactenos.css" />

<!--<link type="text/css" rel="stylesheet" href="font-awesome.css">//-->
<link rel="shortcut icon" href="imagenes/br.ico" />
<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1//style.css" media="screen" />
	<script type="text/javascript" src="engine1//jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->

</head>

<body>
<div class ="contenedor">
<div class="banner"> 
    <p><a href="Index.jsp"><img src="imagenes/Logo.png" alt="Booking Routers" width="1360" height="126" title="Forget the rest, call the best"  /></a></p>
</div>
<nav> 
    <ul id="main"> 
<li>
    <div align="center" ><a href="Index.jsp" style="text-decoration: none;"><span class="glyphicon glyphicon-home"></span> Inicio</a>
</div>
</li>	
</ul>
    </nav> 
<center>
               </li>
                </ul>
            </nav>  
           
             <div class="ba">
                        <h1><center>Contactenos</center></h1>
                    </div>
            <div style=" background: #DDDDDD;  text-align: center; border-radius: 15; padding-top: 5px; border-radius: 15px; " class="popo">
                        <a href="Index.html" style="color:black; text-decoration: none;">Inicio</a>
                        -->
                        <a href="registro.jsp" style="color: black; text-decoration: none;">Contactenos</a>
                    </div>
            
            
            <form name="" action="Controlador" method="post" id="form1" class="contacto"> 

                <table width="744" align="center"><br>
                
                    <tr>
                    <td><label for="nombre" class="labele"><strong>Tu Nombre :<font color="#FF0000">*</strong></label></font></td>
                    <td><input name="nombre" type="text" style="width:250px; height:25px " autofocus id="nombre" placeholder="Nombre" required class="form-control" tabindex="1">
                        </td>
                    </tr>
                    <tr>
                        <td><label for="emal" class="labele"><strong>Tu Email :<font color="#FF0000">*</strong></label></font></td>
                        <td><input name="emal" type="email" style="width:250px; height:30px" autofocus id="doc" placeholder="Correo" required class="form-control inputtext"  minlenght=8 tabindex="2"></td>    
                    </tr>
                    <tr>
                        <td><label for="asunto" class="labele"><strong>Asunto :<font color="#FF0000">*</strong></label></font></td>
                        <td><input name="asunto" type="text" style="width:250px; height:25px " autofocus id="Asunto" placeholder="Asunto" required class="form-control" tabindex="3">
                        </td>
                    </tr>
                    <tr>
                        <td><label for="mensaje" class="labele"><strong>Mensaje<font color="#FF0000" >* </strong></label></font></td>
                        <td><textarea rows="6" tabindex="4"></textarea></td>    
                    </tr>
                    <tr>
                        <td><input type="submit" name="enviar"  id="enviar" class="btn btn-success"  value="Enviar" style="position:relative; left:280px" tabindex="5">


                    </tr>
                    <tr>

                </table>

                </fieldset>
            </form>

</center>
<div class="idioma1">
        <span>Booking Routers &copy; 2015</span><br>
        Integrantes :<span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Yilber Hernandez 
        <span classs="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Cristian Moreno 
        <span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Sergio Stiven Urbiba
        <span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Andres Feipe Guerrero<br>
        <img src="imagenes/dddd.png"><a href="Index1.html" style=" color: #ffffff; text-decoration: none;"  >English</a> --  <img src="imagenes/original.jpg"><a href="Index.html" style=" color: #ffffff; text-decoration: none;" >Spanish</a>
    
</div>    
</body>
</html>