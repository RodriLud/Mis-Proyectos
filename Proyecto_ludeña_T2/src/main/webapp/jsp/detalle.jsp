<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Detalle del Producto</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<div class="card mx-auto" style="max-width: 600px;">
			<img
				src="https://m.media-amazon.com/images/I/71kk3-WCkWL._AC_SX466_.jpg"
				class="card-img-top" alt="Televisor LED"
				style="max-height: 300px; object-fit: contain;">
			<div class="card-body text-center">
				<h3 class="card-title">Televisor LED</h3>
				<p class="card-text">Descripción: Televisor LED de 50 pulgadas</p>
				<p class="card-text font-weight-bold">Precio: $1,200.00</p>
				<p class="card-text text-success">Disponibilidad: Disponible</p>
				<p class="card-text">Stock: 5</p>
				<a href="<%=request.getContextPath()%>/tiendaServlet?type=listar"
					class="btn btn-primary">Volver a Productos</a>
			</div>
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
