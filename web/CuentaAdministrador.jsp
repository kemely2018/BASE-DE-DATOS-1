
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/cuentaad.css" />
        <title>PAGINA ADMINISTRADOR TV!</title>
    </head>
    
    <body>
    <header>
        <div class="container-header">
            <div class="logo-title">
                <img src="image/h.png" >
                <h4> PAGINA ADMINISTRADOR TV!</h4>  
            </div>
        </div>
    </header>
        <form id="frmAdministrador">
            <table id="tablaAdministrador">
                <tr>
                    <th colspan="5">
                        <h2> MENU ADMINISTRADOR 📋 </h2>
                    </th>
                </tr>
                <tr>
                    <th>
                        REGISTRAR NUEVO
                    </th>
                    <th>
                        REGISTROS HABILITADOS
                    </th>
                    <th>
                        REGISTROS INHABILITADOS
                    </th>
                    <th>
                        PEDIDOS REALIZADOS
                    </th>
                    <th>
                        MI CATALOGO
                    </th>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarClaseProducto.jsp" class="link">Clase producto</a>
                    </td>
                    <td>
                        <a href="MostrarCP.jsp" class="link">Clase producto</a>
                    </td>
                    <td>
                        <a href="MostrarCPEliminados.jsp" class="link">Clase producto</a>
                    </td>
                    <td>
                        <a href="MostrarVenta.jsp" class="link">Ir a ventas</a>
                    </td>
                    <td>
                        <a href="Catalogo.jsp" class="link">Ir a catalogo</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarMarcaProducto.jsp" class="link">Marca producto</a>
                    </td>
                    <td>
                        <a href="MostrarMP.jsp" class="link">Marca producto</a>
                    </td>
                    <td>
                        <a href="MostrarMPEliminados.jsp" class="link">Marca producto</a>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="RegistrarProducto.jsp" class="link">Producto</a>
                    </td>
                    <td>
                        <a href="MostrarProducto.jsp" class="link">Producto</a>
                    </td>
                    <td>
                        <a href="MostrarProductosEliminados.jsp" class="link">Producto</a>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <a href="MostrarUsuario.jsp" class="link">Usuario</a>
                    </td>
                    <td>
                        <a href="MostrarUsuarioEliminado.jsp" class="link">Usuario</a>
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
