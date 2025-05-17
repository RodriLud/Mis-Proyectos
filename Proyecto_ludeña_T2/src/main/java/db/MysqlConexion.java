package db;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

public class MysqlConexion {

	

	public static Connection getConexion() {

		Connection connection = null;

		String url = "jdbc:mysql://localhost:3306/tienda";

		String user = "root";

		String password = "1811";



		// response.setContentType("text/html");

		// PrintWriter out = response.getWriter();



		try {

			// Cargar el controlador MySQL

			Class.forName("com.mysql.cj.jdbc.Driver");

			connection = DriverManager.getConnection(url, user, password);

			System.out.println("Conexion exitosa");

			// out.println("<h1>Conexión exitosa a la base de datos!</h1>");

		} catch (ClassNotFoundException e) {

			// Manejar ClassNotFoundException

			 //out.println("<h1>Error: Driver no encontrado.</h1>");

			System.out.println("Drive no encontrado");

			e.printStackTrace();

		} catch (SQLException e) {

			// Manejar SQLException

			// out.println("<h1>Error al conectar con la base de datos:</h1>");

			// out.println("<p>" + e.getMessage() + "</p>");

			System.out.println("Error de conexion");

			e.printStackTrace();



		}

		return connection;

	}



	public static void closeConexion(Connection con) {

		try {

		con.close();

		}catch(SQLException e)

	{

		System.out.println("Problemas al cerrar 1a conexion*");

 

		}

	}

}