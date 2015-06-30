/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Entidad.EntQueja;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Sena
 */
public class Reportes extends ConexionDB {

    EntQueja ent = new EntQueja();
    private PreparedStatement statement;

    //Procedimiento para consultar los aprendices que an hido a comité
    public boolean conReporteAprendiz(EntQueja datosReporte) {
        conectarse();
        boolean retornarObj = false;

        String conReporteAprendiz = "SELECT ID_QUEJA,(Nombre || ' ' || Apellido) AS Nombre_com,Nombre,Apellido,Identificación,N_Ficha,Fecha,Descripcion FROM Quejas where  Nombre = ? or APELLIDO = ? or Identificación = ? or N_FICHA = ? order by Nombre_com";
        try {
            Stmp();
            statement = conector.prepareStatement(conReporteAprendiz);
            statement.setString(1, datosReporte.getNombre());
            statement.setString(2, datosReporte.getApellido());
            statement.setString(3, datosReporte.getIdentificación());
            statement.setString(4, datosReporte.getN_Ficha());

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
    public ResultSet pruConReporteAprendiz() {
        ResultSet result = null;
        conectarse();

        String consulCuenta = "SELECT ID_QUEJA,(Nombre || ' ' || Apellido) AS Nombre_com,Nombre,Apellido,Identificación,N_Ficha,Fecha,Descripcion FROM Quejas where  Nombre = 'Jean' order by Nombre_com";
        try {
            consulta = conector.createStatement();
            result = consulta.executeQuery(consulCuenta);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return result;
    }
}
