<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<%@ page import="Entidades.Tienda"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Productos</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>

	<!-- Encabezado -->
	<div class="bg-primary text-white text-center p-3">
		<h4>Sistema de Gestión</h4>
	</div>

	<div class="container mt-4">
		<h3>Productos</h3>

		<!-- Formulario para mostrar productos (invoca al servlet) -->
		<form action="<%=request.getContextPath()%>/tiendaServlet"
			method="post">
			<input type="hidden" name="type" value="listar">
			<button type="submit" class="btn btn-success mb-3">Mostrar
				Productos</button>
		</form>


		<!-- Tabla de productos -->
		<table class="table table-bordered table-hover mt-3">
			<thead class="thead-dark">
				<tr>
					<th>Nombre</th>
					<th>Precio</th>
					<th>Disponibilidad</th>
					<th>Acciones</th>
				</tr>
			</thead>
<tbody>
    <%
    List<Tienda> productos = (List<Tienda>) request.getAttribute("productos");
    if (productos != null && !productos.isEmpty()) {
        for (int i = 0; i < productos.size(); i++) {
            Tienda producto = productos.get(i);
    %>
    <tr>
        <td><%=producto.getNombre_producto()%></td>
        <td><%=producto.getPrecio()%></td>
        <td><%=producto.getDisponibilidad()%></td>
        <td>
            <a href="<%=request.getContextPath()%>/jsp/detalle.jsp?id=<%=producto.getId_producto()%>" class="btn btn-secondary btn-sm">Detalle 1</a>
            <%
            String detalle2Href = request.getContextPath() + "/jsp/detalle2.jsp?id=" + producto.getId_producto();
            if (i == 1) {
            %>
                <a href="<%=detalle2Href%>" class="btn btn-info btn-sm">Detalle 2</a>
            <%
            } else {
            %>
                <a href="<%=request.getContextPath()%>/jsp/detalle2.jsp?id=<%=producto.getId_producto()%>" class="btn btn-secondary btn-sm">Detalle 2</a>
            <%
            }
            %>
            <a href="<%=request.getContextPath()%>/jsp/detalle3.jsp?id=<%=producto.getId_producto()%>" class="btn btn-secondary btn-sm">Detalle 3</a>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="4" class="text-center text-muted">No hay productos disponibles.</td>
    </tr>
    <%
    }
    %>
</tbody>
		</table>

		<!-- Botón de regreso -->
		<a href="<%=request.getContextPath()%>/jsp/index.jsp"
			class="btn btn-secondary">Volver a Selección de Categoría</a>

	</div>

</body>
</html>
