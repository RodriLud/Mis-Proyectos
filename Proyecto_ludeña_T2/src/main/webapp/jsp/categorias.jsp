<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Seleccionar Categoría</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<!-- Barra de navegación -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand" href="#">Sistema de Gestión</a>
		</div>
	</nav>

	<div class="container mt-5">
		<h2 class="text-center mb-4">Seleccionar Categoría</h2>

		<div class="card mx-auto p-4 shadow-sm" style="max-width: 500px;">
			<form action="productos.jsp" method="get">
				<div class="form-group">
					<label for="categoria">Elige una categoría:</label> <select
						name="categoria" id="categoria" class="form-control">
						<option value="electronicos">Electrodomésticos</option>
						<option value="tecnologia">Tecnología</option>
						<option value="muebles">Muebles</option>
					</select>
				</div>
				<div class="text-center">
					<a href="<%=request.getContextPath()%>/tiendaServlet?type=listar"
						class="btn btn-success">Mostrar Productos</a> <a href="index.jsp"
						class="btn btn-secondary ml-2">Volver al Menú Principal</a>
				</div>

			</form>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
