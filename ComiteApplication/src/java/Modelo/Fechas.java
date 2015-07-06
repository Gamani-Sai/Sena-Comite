/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Entidad.EntFechas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Sena
 */
public class Fechas extends ConexionDB {

    EntFechas ent = new EntFechas();
    private PreparedStatement statemen;

    //Procedimiento para insertar la fechas
    public boolean InsertFechas(EntFechas DatosFechas) {
        conectarse();
        boolean retornarObj = false;
        String insertCuenta = "insert into Fechas (Fecha_inicio,Fecha_fin) values (?,?)";
        try {
            Stmp();
            statemen = conector.prepareStatement(insertCuenta);
            statemen.setString(1, DatosFechas.getFecha_inicio());
            statemen.setString(2, DatosFechas.getFecha_fin());

            int cont = statemen.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return retornarObj;
    }

    //Consulta de fechas
    public ResultSet Fechas() {

        ResultSet rs_traer_fechas = null;
        conectarse();
        String traer_fechas = "select Fecha_inicio,Fecha_fin  from Fechas";
        try {
            consulta = conector.createStatement();
            rs_traer_fechas = consulta.executeQuery(traer_fechas);

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return rs_traer_fechas;
    }
    
    //Procedimiento usado para modificar la fecha existente de comité
    public boolean modificarmodFechas(EntFechas DatosFechas) {
        conectarse();
        boolean retornarObj = false;

        String modFechas = "update Fechas set  Fecha_inicio = ?, Fecha_fin = ?";
        try {
            Stmp();
            statemen = conector.prepareStatement(modFechas);
            statemen.setString(1, DatosFechas.getFecha_inicio());
            statemen.setString(2, DatosFechas.getFecha_fin());

            int cont = statemen.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return retornarObj;
    }

}
