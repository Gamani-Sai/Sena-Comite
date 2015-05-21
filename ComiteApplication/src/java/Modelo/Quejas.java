/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.PreparedStatement;
import Entidad.EntQueja;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author gestion
 */
public class Quejas extends ConexionDB {

    EntQueja ent = new EntQueja();
    private PreparedStatement statement;

    //Procedimiento para inserta datos en la tabla Queja
    public boolean InsertQueja(EntQueja DatosQueja) {
        conectarse();
        boolean retornarObj = false;

        String insertQueja = "insert into Quejas (Nombre,Apellido,Identificación,N_Ficha,Tipo_Queja,Descripcion,Especialidad,Evidencia) values (?,?,?,?,?,?,?,?)";
        try {
            Stmp();
            statement = conector.prepareStatement(insertQueja);
            statement.setString(1, DatosQueja.getNombre());
            statement.setString(2, DatosQueja.getApellido());
            statement.setString(3, DatosQueja.getIdentificación());
            statement.setString(4, DatosQueja.getN_Ficha());
            statement.setString(5, DatosQueja.getTipo_Queja());
            statement.setString(6, DatosQueja.getDescripcion());
            statement.setString(7, DatosQueja.getEspecialidad());
            statement.setString(8, DatosQueja.getEvidencia());

            int cont = statement.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return retornarObj;
    }

    //Procedimiento para consultar la información
    public ResultSet ConsulQuejas() {
        ResultSet result = null;
        conectarse();

        String consulQuejas = "SELECT Nombre,Apellido,Identificación,N_Ficha,Tipo_Queja,Descripcion,Especialidad FROM Quejas";
        try {
            consulta = conector.createStatement();
            result = consulta.executeQuery(consulQuejas);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return result;
    }

}
