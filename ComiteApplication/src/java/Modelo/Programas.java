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
public class Programas extends ConexionDB {

    EntProgramas ent = new EntProgramas();
    private PreparedStatement statemen;

    //Procedimiento para inserta datos en la tabla Programas
    public boolean InsertProgramas(EntProgramas DatosProgramas) {
        conectarse();
        boolean retornarObj = false;
        String insertProgramas = "insert into Programas (Nombre_Programa,Estado) values (?,?)";
        try {
            Stmp();
            statemen = conector.prepareStatement(insertProgramas);
            statemen.setString(1, DatosProgramas.getNombre_Programa());
            statemen.setString(2, DatosProgramas.getEstado());

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
        String insertProgramas = "insert into ProgramasTecnico (Nombre_ProgramaTec) values (?)";
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

    //Para traer todos los programas tecnologos
    public ResultSet traerProgramas() {

        ResultSet rsp = null;
        conectarse();

        String profesor = "select ID_PROGRAMA,Nombre_Programa,Estado  from Programas ";
        try {
            consulta = conector.createStatement();
            rsp = consulta.executeQuery(profesor);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return rsp;
    }

    //Para traer todos los programas tecnicos
    public ResultSet traerProgramasTec() {

        ResultSet rsp = null;
        conectarse();

        String profesor = "select ID_PROGRAMATEC, Nombre_ProgramaTec , EstadoTec  from ProgramasTecnico ";
        try {
            consulta = conector.createStatement();
            rsp = consulta.executeQuery(profesor);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return rsp;
    }
    
    //Para cambiar el estado tabla tecnologo
    public boolean cambiar_estado(EntProgramas datosProgramas) {
        conectarse();
        boolean retornarObj = false;
        String cambio_est = "update Programas set  Estado = ? where Id_Programa = ?";
        try {
            Stmp();
            statemen = conector.prepareStatement(cambio_est);
            statemen.setString(1, datosProgramas.getEstado());
            statemen.setInt(2, datosProgramas.getId_Programa());

            int cont = statemen.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }
        } catch (Exception e) {
        }

        return retornarObj;
    }
    
     //Para cambiar el estado tabla tecnicos
    public boolean cambiar_estadotec(EntProgramas datosProgramas) {
        conectarse();
        boolean retornarObj = false;
        String cambio_est = "update ProgramasTecnico set  EstadoTec = ? where Id_ProgramaTec = ?";
        try {
            Stmp();
            statemen = conector.prepareStatement(cambio_est);
            statemen.setString(1, datosProgramas.getEstado());
            statemen.setInt(2, datosProgramas.getId_Programa());

            int cont = statemen.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }
        } catch (Exception e) {
        }

        return retornarObj;
    }

}
