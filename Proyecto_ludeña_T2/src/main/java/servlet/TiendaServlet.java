package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entidades.Tienda;
import modelos.TiendaModelos;

@WebServlet("/tiendaServlet")
public class TiendaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public TiendaServlet() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println(" Entró al Servlet Tienda");
        
        String type = request.getParameter("type");
        if (type == null || type.isEmpty()) {
            errorResponse(request, response, "Parámetro 'type' no proporcionado.");
            return;
        }

        switch (type) {
            case "listar":
                listTienda(request, response);
                break;

            default:
                request.setAttribute("mensaje", "Ocurrió un problema desconocido.");
                request.getRequestDispatcher("detalle.jsp").forward(request, response);
        }
    }

    protected void listTienda(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Listando productos...");
        
        TiendaModelos tiendaModelo = new TiendaModelos();
        List<Tienda> data = tiendaModelo.listTienda();
        
        System.out.println("Cantidad de productos obtenidos: " + data.size());

        request.setAttribute("productos", data);
        request.getRequestDispatcher("/jsp/productos.jsp").forward(request, response);
    }

    private void errorResponse(HttpServletRequest request, HttpServletResponse response, String mensaje)
            throws ServletException, IOException {
        request.setAttribute("mensaje", mensaje);
        request.getRequestDispatcher("/jsp/productos.jsp").forward(request, response);
    }

  
  }

