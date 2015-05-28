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

        String insertQueja = "insert into Quejas (Nombre,Apellido,Identificación,N_Ficha,Tipo_Queja,Descripcion,Especialidad) values (?,?,?,?,?,?,?)";
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
            //statement.setString(8, DatosQueja.getEvidencia());

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

        String consulQuejas = "SELECT ID_QUEJA,Nombre,Apellido,Identificación,N_Ficha,Tipo_Queja,Descripcion,Especialidad FROM Quejas order by Nombre";
        try {
            consulta = conector.createStatement();
            result = consulta.executeQuery(consulQuejas);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return result;
    }

    //Procedimiento para Modificar la información del aprendiz
    public boolean modificarInfoAprendiz(EntQueja datosQueja) {
        conectarse();
        boolean retornarObj = false;

        String modInfoAprendiz = "update quejas set  NOMBRE = ?,APELLIDO = ?, IDENTIFICACIÓN = ?, N_FICHA = ? where ID_QUEJA =  ?";
        try {
            Stmp();
            statement = conector.prepareStatement(modInfoAprendiz);
            statement.setString(1, datosQueja.getNombre());
            statement.setString(2, datosQueja.getApellido());
            statement.setString(3, datosQueja.getIdentificación());
            statement.setString(4, datosQueja.getN_Ficha());
            //statement.setString(5, datosQueja.getEspecialidad());
            statement.setInt(5, datosQueja.getId_Queja());

            int cont = statement.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return retornarObj;
    }

    //Procedimiento para Modificar la información de la queja
    public boolean modificarInfoQueja(EntQueja datosQueja) {
        conectarse();
        boolean retornarObj = false;

        String modInfoQueja = "update quejas set  TIPO_QUEJA = ?,DESCRIPCION = ? where ID_QUEJA =  ?";
        try {
            Stmp();
            statement = conector.prepareStatement(modInfoQueja);
            statement.setString(1, datosQueja.getTipo_Queja());
            statement.setString(2, datosQueja.getDescripcion());
            statement.setInt(3, datosQueja.getId_Queja());

            int cont = statement.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return retornarObj;
    }

}
