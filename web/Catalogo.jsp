<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Clase.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/Catalogo.js"></script>
        <link type="text/css" rel="stylesheet" href="css/catalogo.css" />
        
        <title>CATALOGO TV!</title>
        
    </head>
    
    <body onload="cargar()">
    <header>
        <div class="container-header">
            <div class="logo-title">
                <img src="image/h.png" >
                <h4>TIENDA ONLINE DE TELEVISORES  </h4>  
            </div>
        </div>
    </header>
    <section id="anuncios">
	<div class="contenedor">
		<ul>
			<li><img src="image/1.png"></li>
			<li><img src="image/2.png"></li>
			<li><img src="image/3.png"></li>
			<li><img src="image/4.png"></li>
		</ul>
	</div>
    </section>
        
        
        <%
            String codigo = (String)session.getAttribute("parametroCodigo");
            
            Usuario usu = Usuario_DB.listarUsuarioPorCodigo(codigo);
            String cliente = usu.getNombreUsuario() + ", " + usu.getApellidosUsuario();
        %>
        
        <form action="Servlet_Usu" method="post" id="frmCabecera">
            <input type="hidden" value="<%=usu.getTipoUsuario() %>" name="txtTipo" id="txtTipo">
            
            <table id="tablaCabecera">
                <tr>
                    <td colspan="5">
                            <h1>Bienvenido : <%=usu.getNombreUsuario() %>, <%=usu.getApellidosUsuario() %></h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarVenta.jsp" class="link" id="lnkCompra"><h4>MI COMPRA 🛒</h4></a>
                    </td>
                    <td>
                        <a href="MiPerfil.jsp?codigoU=<%=usu.getCodigoUsuario() %>" class="link" id="lnkPerfil">Mi cuenta 🔑</a>  
                    </td>
                    <td>
                        <a href="CuentaAdministrador.jsp" class="link" id="lnkAdm">Administrar 🖱</a>
                    </td
                    <td>
                        <a href="CuentaUsuario.jsp" class="link" id="lnkUsu">Vender 🎹</a>
                    </td>
                    <td>
                        <a href="Login.jsp" class="link" id="lnkLogin">LOGIN 🔒</a>
                    </td>
                    <td>
                        <a href="Servlet_Usu?accion=logout" class="link" id="lnkLogout">Salir 🚪</a>
                    </td>
                </tr>
            </table>
        
            <input type="hidden" name="accion" value="logout">
        </form>
        <hr>

        <form id="frmCatalogo">
            
            <table width="800" id="tablaCatalogo">
                <tbody>
                <%
                    ArrayList<Producto> lista = Producto_DB.obtenerProductosHabilitados();
                    int salto = 0;
                    for(int i=0; i<lista.size(); i++){
                        Producto p = lista.get(i);
                %>
                
                            <th><img  src="Imagen/<%=p.getImagenP() %>" width="200" height="200"><br>
                                <%=p.getClaseProducto()%> <%=p.getMarcaProducto()%> <br>
                                <%=p.getDescripcion()%><br>
                                S/ <%=p.getPrecioP() %><br> 
                            <input type="button" class="BotonModificar" name="btnModificar" value="Modificar" onclick="location.href='ModificarProducto.jsp?codigoP=<%=p.getCodigoP() %>'">
                            <input type="button" class="BotonADD" name="btnADD" value="🛒" onclick="location.href='AnadirCarrito.jsp?codigoP=<%=p.getCodigoP()%>&&cliente=<%=cliente %>'"><br>
                            </th>
                
                <%
                        salto++;
                        if(salto == 1){
                            %>
                            
                            <tr>
                                
                            <%
                            salto = 0;
                        } 
                    }
                %>
                </tbody>
            </table>
        </form>  
    </body>
</html>
