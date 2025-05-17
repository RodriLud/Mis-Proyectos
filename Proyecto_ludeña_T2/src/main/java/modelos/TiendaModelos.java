package modelos;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import db.MysqlConexion;
import interfaz.TiendaInterfaz;
import Entidades.Tienda;

public class TiendaModelos implements TiendaInterfaz {

    @Override
    public List<Tienda> listTienda() {
        List<Tienda> listTienda = new ArrayList<>();
        String sql = "SELECT * FROM productos";

        try (Connection cn = MysqlConexion.getConexion();
             PreparedStatement psm = cn.prepareStatement(sql);
             ResultSet rs = psm.executeQuery()) {

            while (rs.next()) {
                Tienda tienda = new Tienda();
                tienda.setId_producto(rs.getString("id_producto"));
                tienda.setNombre_producto(rs.getString("nombre_producto"));
                tienda.setPrecio(rs.getDouble("precio"));
                tienda.setDisponibilidad(rs.getString("disponibilidad"));
                tienda.setId_categoria(rs.getString("id_categoria"));

                listTienda.add(tienda);
            }
        } catch (SQLException e) {
            System.err.println("Error en listTienda(): " + e.getMessage());
            e.printStackTrace();
        }
        return listTienda;
    }

    @Override
    public List<Tienda> listTienda1() {
        List<Tienda> tiendas = new ArrayList<>();
        String sql = "SELECT * FROM productos"; 

        try (Connection cn = MysqlConexion.getConexion();
             Statement stmt = cn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Tienda tienda = new Tienda();
                tienda.setId_producto(rs.getString("id_producto"));
                tienda.setNombre_producto(rs.getString("nombre_producto"));
                tienda.setPrecio(rs.getDouble("precio"));
                tienda.setDisponibilidad(rs.getString("disponibilidad"));
                tienda.setId_categoria(rs.getString("id_categoria"));

                tiendas.add(tienda); 
            }
        } catch (SQLException e) {
            System.err.println("Error en listTienda1(): " + e.getMessage());
            e.printStackTrace();
        }
        return tiendas;
    }
    
    
}
