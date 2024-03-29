<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/RegistrarMP.js"></script>
        <link type="text/css" rel="stylesheet" href="css/registrar.css" />
        <title>REGISTRAR MARCA PRODUCTO</title>
    </head>
    
    <%
        String Codigo_MP = ObtenerCodigo.CodigoMarcaProducto();
    %>
    
    <body onload="cargar()">
        <header>
        <div class="container-header">
            <div class="logo-title">
                <img src="image/h.png" >
                <h4>REGISTRAR MARCA PRODUCTO </h4>  
            </div>
        </div>
        </header>
        <form name="frm" action="Servlet_MP" method="post" id="frmRegistrarMP">
            <table id="tablaRegistrarMP">
                <tr>
                    <th colspan="2">
                        <h1>Registrar marca producto</h1>
                    </th>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Codigo :
                    </td>
                    <td>
                        <dd> <input type="text" name="txtCodigo" value="<%=Codigo_MP %>" readonly="readonly">  </dd>
                    </td>
                </tr>
                <tr>
                    <td class="primeraColumna">
                        Marca producto :
                    </td>
                    <td>
                        <dd> <input type="text" name="txtNombre" id="txtNombre" class="textBox"> </dd>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="Botones">
                        <br>
                        <input type="button" name="btnCancelar" id="btnCancelar" class="button" value="Cancelar"> 
                        <input type="button" name="btnRegistrar" id="btnRegistrar" class="button" value="Registrar"> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
                    <input type="hidden" name="accion" value="insertar">
        </form>
    </body>
</html>
