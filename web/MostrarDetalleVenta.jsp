<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Clase.*" %>
<%@page import="java.text.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/css1.css" />
        <title>Mostrar Detalle Venta</title>
    </head>
    
    <%
        String CodigoVenta = (String)session.getAttribute("CodigoVenta");
        String CodigoCliente = (String)session.getAttribute("CodigoCliente");
        String Cliente = (String)session.getAttribute("Cliente");
        String Fecha = (String)session.getAttribute("FechaVenta");
        String Importe = (String)session.getAttribute("Importe");
    %>
    
    <body>
        <form action="Servlet_Prod" method="post" id="frmMostrarDetalleVenta">
            <br>
            <table id="tablaMostrarDetalleVenta">
                <tr>
                    <th colspan="5" class="TituloDV">
                        <h3>VENTA - <%=CodigoVenta %> </h3>
                    </th>
                </tr>
                <tr>
                    <th class="TituloDV">
                        CLIENTE :  
                    </th>
                    <td colspan="4" class="Contenido">
                        <%=Cliente %>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" class="FilaEnBlanco">
                        <br>
                    </td>
                </tr>
                <tr>
                    <th class="TituloDV">
                        PRODUCTO 
                    </th>
                    <th class="TituloDV">
                        P/U (S/.)
                    </th>
                    <th class="TituloDV">
                        CANTIDAD 
                    </th>
    
                    <th class="TituloDV">
                        SUBTOTAL (S/.)
                    </th>
                </tr>
                
                <%
                    DecimalFormat df = new DecimalFormat("0.00");
                    DecimalFormatSymbols dfs = df.getDecimalFormatSymbols();
                    dfs.setDecimalSeparator('.');
                    df.setDecimalFormatSymbols(dfs);
                    
                    ArrayList<DetalleVenta> lista = DetalleVenta_DB.obtenerDetalleVenta(CodigoVenta); 
                    for(int i=0; i<lista.size(); i++){
                        DetalleVenta dv = lista.get(i);
                        %>
                            <tr>
                                <td class="Contenido"><%=dv.getNombreProducto() %></td>
                                <td class="Contenido"><%=df.format(dv.getPrecio())%></td>
                                <td class="Contenido"><%=df.format(dv.getCantidad())%></td>
                                <td class="Contenido"> <div> <%=df.format(dv.getSubTotal()) %> </div> </td>
                            </tr>
                        <%
                    }
                %>
                <tr>
                    <th colspan="4" class="TituloDV">
                        <div> TOTAL (S/.)  </div>
                    </th>
                    <th class="Contenido">
                        <div> <%=df.format(Double.parseDouble(Importe)) %> </div>
                    </th>
                </tr>
                <tr>
                    <td colspan="5" class="FilaEnBlanco">
                        <br>
                    </td>
                </tr>
            </table>
                    
            <table id="tablaRegresar">
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="MostrarVenta.jsp" class="link">REGRESAR</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br>
                    </td>
                </tr>
            </table>
                    
        </form>
        
                    <form id="frmMostrarDatosCliente">
                        <br>
                        <table id="tablaMostrarDatosCliente">
                            <%
                                Usuario usu = Usuario_DB.listarUsuarioPorCodigo(CodigoCliente);
                            %>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Fecha : </dd>
                                </td>
                                <td>
                                    <dd> <%=Fecha %> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Codigo cliente : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getCodigoUsuario() %> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td class="primeraColumna">
                                    <dd> Cliente : </dd>
                                </td>
                                <td>
                                    <dd> <%=usu.getNombreUsuario() %>, <%=usu.getApellidosUsuario() %> </dd>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                        </table>
                    </form>            
    </body>
</html>
