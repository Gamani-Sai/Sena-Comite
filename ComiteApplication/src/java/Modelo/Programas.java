/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Entidad.EntProgramas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author gestion
 */
public class Programas extends ConexionDB{

    EntProgramas ent = new EntProgramas();
    private PreparedStatement statemen;

    //Procedimiento para inserta datos en la tabla Programas
    public boolean InsertProgramas(EntProgramas DatosProgramas) {
        conectarse();
        boolean retornarObj = false;
        String insertProgramas = "insert into Programas (Nombre_Programa) values (?)";
        try {
            Stmp();
            statemen = conector.prepareStatement(insertProgramas);
            statemen.setString(1, DatosProgramas.getNombre_Programa());
            

            int cont = statemen.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return retornarObj;
    }
    
    //Procedimiento para inserta datos en la tabla Programas
    public boolean InsertProgramasTecnico(EntProgramas DatosProgramas) {
        conectarse();
        boolean retornarObj = false;
        String insertProgramas = "insert into ProgramasTecnico (Nombre_Programa) values (?)";
        try {
            Stmp();
            statemen = conector.prepareStatement(insertProgramas);
            statemen.setString(1, DatosProgramas.getNombre_Programa());
            

            int cont = statemen.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return retornarObj;
    }
    
    //Para traer todos los programas
    public ResultSet traerProgramas() {

        ResultSet rsp = null;
        conectarse();

        String profesor = "select Nombre_Programa  from Programas ";
        try {
            consulta = conector.createStatement();
            rsp = consulta.executeQuery(profesor);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return rsp;
    }
}
