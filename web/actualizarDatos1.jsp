<%@page import="co.sena.edu.booking.DAO.personasDAO"%>
<%@page import="co.sena.edu.booking.DTO.personasDTO"%>
<%@page import="co.sena.edu.booking.DTO.nacionalidadesDTO"%>
<%@page import="co.sena.edu.booking.DTO.ciudadesDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="co.sena.edu.booking.DAO.nacionalidadesDAO"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Booking Routers</title>
        <link type="text/css" rel="stylesheet" href="css/css.css" />
        <link type="text/css" rel="stylesheet" href="bootstrap-3.2.0-dist/bootstrap-3.2.0-dist/css/bootstrap.css">
        <link rel="shortcut icon" href="imagenes/br.ico" />
        <script src="scripts/bookclient.js" type="text/javascript">
        </script>
            <script src="scripts/AjaxCiudades.js" type="text/javascript"></script>
    </head>
    <body>
        <div class ="contenedor">
            <div class="banner"> 
                <p><a href="Index.html"><img src="imagenes/Logo.png" alt="Booking Routers" width="1360" height="126" title="Forget the rest, call the best"  /></a></p>
            </div>
            <nav> 
                <ul id="main">  
                    <li><div align="center"><a href="verificarRegistro.jsp" style="text-decoration: none;"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                                      
                    <li><div align="center"><a href="menuCliente.jsp" style="text-decoration: none;"><span class="glyphicon glyphicon-list"></span> Menu</a> 
                    </li>                  
                </ul>
            </nav> 

            <%
                HttpSession misesion = request.getSession(false);

                if (misesion.getAttribute("logueado") != null) {
                    personasDTO pdto = null;
                    personasDTO persona = null;
                    personasDAO pdao = new personasDAO();
                    pdto = (personasDTO) misesion.getAttribute("logueado");
                    persona = pdao.ListarUnaPersona(pdto.getIdPersona());


            %>

            <form id="registro" action="modificar" method="post"> 
                <table width="744" align="center" id="registro">
                    <div class="ba">
                        <h1>Modificar Datos de registro</h1>
                    </div>

                    <tr>
                        <td><label for="nombre" class="labele">Nombres</label></td>
                        <td><input name="nombres" type="text" id="nombre" value="<%=persona.getNombres()%>" style="width:250px; height:25px " readonly="readonly" autofocus required class="form-control inputtext"></td>

                        <td><label for="ape" class="labele">Apellidos<font color="#FF0000"></label></td>
                        <td><input name="apellidos" type="text" id="ape" value="<%=persona.getApellidos()%>" style="width:250px; height:25px" readonly="readonly" autofocus required class="form-control inputtext"></td>
                    </tr> 
                    <tr>
                        <td><label for="doc" class="labele">Documento <font color="#FF0000"></label></td>
                        <td><input name="doc" type="number"  id="doc" value="<%=persona.getIdPersona()%>" style="width:250px; height:30px" readonly="readonly" autofocus required class="form-control inputtext"></td>    

                        <td><label for="date" class="labele">Fecha Nacimiento<font color="#FF0000"></label></td>
                        <td><input name="date" type="text" id="date" value="<%=persona.getFechaNto()%>" style="width:250px; height:25px" readonly="readonly"  autofocus required class="form-control inputtext"></td>   
                    </tr>
                    <tr>
                        <td><label for="tel" class="labele">Telefono <font color="#FF0000"></label></td>
                        <td><input name="tel" type="text" id="tel" value="<%=persona.getTelefono()%>" style="width:250px; height:25px" autofocus required class="form-control inputtext"></td>   

                        <td><label for="cor" class="labele">Correo<font color="#ff0000"></label></td>
                        <td><input name="cor" type="email" id="cor" value="<%=persona.getCorreoElectronico()%>" style="width:250px; height:25px"  autofocus required class="form-control inputtext"></td>
                    </tr>
                    <tr>
                        <td><label for="paisnac" class="labele">País<font color="#ff0000"></label></td>
                        <td>
                            <select id="paises" value="<%=persona.getIdNacionalidad()%>" name="paisnac" id="paisnac" style="width:250px; height:35px" autofocus required class="form-control inputtext" list="paises" tabindex="8" onchange="getCiudades(this.value);">

                                <%
                                    nacionalidadesDAO cdao = new nacionalidadesDAO();
                                    ArrayList<nacionalidadesDTO> Ciud = new ArrayList();
                                    Ciud = (ArrayList) cdao.listarNacionalidades();
                                    for (nacionalidadesDTO cdto : Ciud) {
                                %>   
                                <option value="<%=cdto.getIdNacionalidad()%>"> <%=cdto.getNacionalidad()%></option>
                                <%
                                    }
                                %>
                            </select>                                           

                        <td><label for="ciunac" class="labele">Ciudad<font color="#FF0000"></label></td>
                        <td>

                            <select id="ciunac" name="ciunac" value="<%=persona.getIdCiudad()%>" id="ciunac" style="width:250px; height:35px" autofocus required class="form-control inputtext"  list="ciudades" tabindex="9">
                            <option value="0" >Elija Ciudad</option>

                            </select>                                     
                    </tr>


                    <tr>
                </table> 

                <center>
                    <label for="obs" class="labele">Observaciones</label>
                    <textarea cols=50 rows=3 name="info" value="<%=persona.getObservaciones()%>" autofocus required class="form-control inputtext" style="position:relative; left:50px"></textarea
                    <br>
                    <br>
                    <input name="submit10" class="btn btn-success" type="submit" id="submit10" value="Guardar Cambios">
                </center>                                        



                <%
                    }
                %>
            </form>
        </div>
<div style="width:100%; background: #0C4391; height: 30px; margin-top:10px; padding-top:5px; border-radius:3px;color:#e2c60f; margin-bottom:1%; float:left; text-align: center;height:70px;color:white;">
        <span>Booking Routers &copy; 2015</span><br>
        Integrantes :<span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Yilber Hernandez 
        <span classs="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Cristian Moreno 
        <span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Sergio Stiven Urbiba
        <span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Andres Feipe Guerrero<br>
        <img src="imagenes/dddd.png"><a href="actualizarDatos1.jsp" style=" color: #ffffff; text-decoration: none;"  >English</a> --  <img src="imagenes/original.jpg"><a href="actualizarDatos2.jsp" style=" color: #ffffff; text-decoration: none;" >Spanish</a>

</div>

    </body>
</html>
