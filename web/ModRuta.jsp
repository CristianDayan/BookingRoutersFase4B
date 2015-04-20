<%-- 
    Document   : ModificaRuta
    Created on : Jan 23, 2015, 4:03:26 PM
    Author     : pipe0
--%>

<%@page import="co.sena.edu.booking.DAO.rutasDAO"%>
<%@page import="co.sena.edu.booking.DAO.estadorutasDAO"%>
<%@page import="co.sena.edu.booking.DAO.conductoresDAO"%>
<%@page import="co.sena.edu.booking.DAO.reserDAO"%>
<%@page import="co.sena.edu.booking.DAO.tipovehiculosDAO"%>
<%@page import="co.sena.edu.booking.DAO.personasDAO"%>
<%@page import="co.sena.edu.booking.DTO.personasDTO"%>
<%@page import="co.sena.edu.booking.DTO.personasDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="js/jquery-1.2.6.js"></script>
<script type="text/javascript">
$(document).ready(function(){
       setTimeout(function(){ $(".mensajes").fadeIn(800).fadeOut(800);}, 4000); 
});
</script>
<style type="text/css">
    .info, .exito, .alerta, .error {
       font-family:Arial, Helvetica, sans-serif; 
       font-size:13px;
       border: 1px solid;
       margin: 10px 0px;
       padding:15px 10px 15px 50px;
       background-repeat: no-repeat;
       background-position: 10px center;
}
.exito {
       color: #4F8A10;
       background-color: #DFF2BF;
       background-image:url('img/exito.png');
}

.alerta {
       color: #9F6000;
       background-color: #FEEFB3;
       background-image: url('img/alerta.png');
}
.error{
       color: #D8000C;
       background-color: #FFBABA;
       background-image: url('img/error.png');
}


</style>
        <link type="text/css" rel="stylesheet" href="bootstrap-3.2.0-dist/bootstrap-3.2.0-dist/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="css/css.css">
	<script  src="jquery/jquery.js"></script>
        <script  src="scripts/Ajax.js"></script>
	<script src="jquery/jquery.validate.js"></script>
	<script src="jquery/additional-methods.js"></script>
<meta charset="utf-8">
<title>..::Booking Routers::..</title>
<link rel="shortcut icon" href="img/br.ico" />
</head>
<body>
<div class ="contenedor">
<div class="banner"> 
    <p><a href="Index.jsp"><img src="imagenes/Logo.png" alt="Booking Routers" width="100%" height="150px" title="Forget the rest, call the best"  /></a></p>
</div>
<nav>
<ul id="main">
    <li><a href="verificarRegistro.jsp" style="text-decoration: none;">Inicio</li></a>
       
        <li><a align="center" href="#" style="text-decoration: none;">Gestion de Rutas</a>
                            <ul class="submain">
                                <li><a href="CreaRuta.jsp?msj=" style="text-decoration: none;">Creación de Rutas</a></li>
                                <li><a href="ModRuta.jsp?msj=" style="text-decoration: none;">Modificación de Rutas</a> </li>
                                </ul>
                        </li>
                         <li><a align="center" href="#" style="text-decoration: none;">Mi Cuenta</a>
                            <ul class="submain">
                                <li><a href="actualizarDatos1.jsp" style="text-decoration: none;">Mis Datos</a></li>
                                <li><a href="cambiarContraseña.jsp" style="text-decoration: none;">Cambiar Contraseña</a> </li>
                                </ul>
                        </li>
                         <li><div align="center"><a href="Index.html" style="text-decoration: none;"><span class="glyphicon glyphicon-remove-sign"></span>Cerrar sesion</li>
      
        </ul>

</nav>
<br>

<%
    HttpSession misesion = request.getSession(false);

    if (misesion.getAttribute("logueado") != null) {
        personasDTO pdto = null;
        personasDTO persona = null;
        personasDAO pdao = new personasDAO();
        tipovehiculosDAO TVDao = new tipovehiculosDAO();
        reserDAO  RDao= new reserDAO();
        rutasDAO ruDao= new rutasDAO();
        conductoresDAO conDAO = new conductoresDAO();
        estadorutasDAO estadoDAO =new estadorutasDAO();
        pdto = (personasDTO) misesion.getAttribute("logueado");
        persona = pdao.ListarUnaPersona(pdto.getIdPersona());                                       
%>
<div>
<form name="Modificacion de Rutas"  action="ModRuta" method="post" >
    <div>
    <div  style="background: #0C4391; height: 70px; margin-top: 10px; padding-top: 5px; border-radius: 15px; color: #e2c60f">
            <h2>
                <center>Modificar Rutas</center>
            </h2>
        </div>
    
    <center>
    <table>
     
      <tr>
        <td colspan="2">
             <% if(request.getParameter("msj") != null) {%>
            <% if(!request.getParameter("msj").equals("")) { %> 
            <div class="exito mensajes" role="alert">
            <%= request.getParameter("msj") %>
            </div>
             <% }%>
            
             <% }%>
        </td>
    </tr>
    </table>
        <br>
         <tr>
         <td colspan="2">
        <%
 if(request.getParameter("no") != null  ) {
%>
<div>
    <b class="error mensajes"  role="alert" style="position:relative; left:10px"> Esta ruta ya ha sido asignada</b>
</div>
<%
 }
%>  
        </td>
    </tr>
        
     <br>     
    </center>
</div>  
        
 <div id="divMod">  
 </div>
        
        <div id="divEdit">
            
        </div>
</form>
</div>
        <br>
        <br>
        
        <%=ruDao.getHTMLTableAll("es") %>
               
<div style="width:100%; background: #0C4391; height: 30px; margin-top:10px; padding-top:5px; border-radius:3px;color:#e2c60f; margin-bottom:1%; float:left; text-align: center;height:70px;color:white;">
        <span>Booking Routers &copy; 2015</span><br>
        Integrantes :<span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Yilber Hernandez 
        <span classs="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Cristian Moreno 
        <span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Sergio Stiven Urbiba
        <span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Andres Feipe Guerrero<br>
        <img src="imagenes/dddd.png"><a href="ModRuta1.jsp" style=" color: #ffffff; text-decoration: none;"  >English</a> --  <img src="imagenes/original.jpg"><a href="ModRuta.jsp" style=" color: #ffffff; text-decoration: none;" >Spanish</a>

</div>
 <%
   }
 %>
    </body>
</html>
