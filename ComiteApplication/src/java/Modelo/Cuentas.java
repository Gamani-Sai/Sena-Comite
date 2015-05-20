/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Entidad.EntCuentas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author gestion
 */
public class Cuentas extends ConexionDB {

    EntCuentas ent = new EntCuentas();
    private PreparedStatement statemen;

    //Procedimiento para inserta datos en la tabla Cuenta_Usuario 
    public boolean InsertCuentas(EntCuentas Datoscuenta) {
        conectarse();
        boolean retornarObj = false;
        String insertCuenta = "insert into Cuenta_Usuario (Nombre,Apellido,Identificación,Tel_Cel,Contraseña,Estado) values (?,?,?,?,?,?)";
        try {
            Stmp();
            statemen = conector.prepareStatement(insertCuenta);
            statemen.setString(1, Datoscuenta.getNombre());
            statemen.setString(2, Datoscuenta.getApellido());
            statemen.setString(3, Datoscuenta.getIdentificación());
            statemen.setString(4, Datoscuenta.getTel_Cel());
            statemen.setString(5, Datoscuenta.getContraseña());
            statemen.setString(6, Datoscuenta.getEstado());

            int cont = statemen.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return retornarObj;
    }

    //Procedimiento para consultar la información
    public ResultSet ConsulCuentas() {
        ResultSet result = null;
        conectarse();

        String consulCuenta = "SELECT NOMBRE,APELLIDO,IDENTIFICACIÓN,TEL_CEL FROM CUENTA_USUARIO";
        try {
            consulta = conector.createStatement();
            result = consulta.executeQuery(consulCuenta);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return result;
    }
}
