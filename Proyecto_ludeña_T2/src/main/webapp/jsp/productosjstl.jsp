<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<%@ page import="Entidades.Tienda"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Productos JSTL</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Productos Disponibles</h3>
			</div>
			<div class="panel-body">
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Nombre</th>
							<th>Precio</th>
							<th>Disponibilidad</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>
						<%
						List<Tienda> listTienda = (List<Tienda>) request.getAttribute("productos");
						if (listTienda != null) {
							for (Tienda item : listTienda) {
						%>
						<tr>
							<td><%=item.getId_producto()%></td>
							<td><%=item.getNombre_producto()%></td>
							<td>S/ <%=item.getPrecio()%></td>
							<td><%=item.getDisponibilidad()%></td>
							<td>
								<a href="<%=request.getContextPath()%>/jsp/detalle.jsp?id=<%=item.getId_producto()%>" class="btn btn-secondary btn-sm">Detalles</a>
							</td>
						</tr>
						<%
							}
						} else {
						%>
						<tr>
							<td colspan="5" class="text-center text-muted">No hay productos disponibles.</td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>

		<!-- Formulario de selección de categoría -->
		<form action="<%=request.getContextPath()%>/tiendaServlet?type=listar" method="post" class="mt-4">
			<div class="mb-3">
				<select name="id" class="form-control">
					<%
					List<Tienda> categorias = (List<Tienda>) request.getAttribute("categorias");
					if (categorias != null) {
						for (Tienda tienda : categorias) {
					%>
					<option value="<%=tienda.getId_producto()%>"><%=tienda.getNombre_producto()%></option>
					<%
						}
					}
					%>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">Mostrar Productos</button>
		</form>

		<!-- Botón de regreso -->
		<a href="<%=request.getContextPath()%>/jsp/index.jsp" class="btn btn-secondary">Volver a Selección de Categoría</a>
	</div>
</body>
</html>