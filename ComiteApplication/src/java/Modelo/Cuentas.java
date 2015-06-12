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
        String insertCuenta = "insert into Cuenta_Usuario (Nombre,Apellido,Identificación,Tel_Cel,Contraseña,Estado,Correo) values (?,?,?,?,?,?,?)";
        try {
            Stmp();
            statemen = conector.prepareStatement(insertCuenta);
            statemen.setString(1, Datoscuenta.getNombre());
            statemen.setString(2, Datoscuenta.getApellido());
            statemen.setString(3, Datoscuenta.getIdentificación());
            statemen.setString(4, Datoscuenta.getTel_Cel());
            statemen.setString(5, Datoscuenta.getContraseña());
            statemen.setString(6, Datoscuenta.getEstado());
            statemen.setString(7, Datoscuenta.getCorreo());

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

        String consulCuenta = "SELECT Id_Cuenta, (Nombre || ' ' || Apellido) AS Nombrecompleto ,NOMBRE,APELLIDO,IDENTIFICACIÓN,TEL_CEL,CORREO,Estado FROM CUENTA_USUARIO";
        try {
            consulta = conector.createStatement();
            result = consulta.executeQuery(consulCuenta);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

        return result;
    }

    public boolean modificarInfoCuenta(EntCuentas datosQueja) {
        conectarse();
        boolean retornarObj = false;

        String modInfoCuenta = "update CUENTA_USUARIO set  Correo = ?, Contraseña = ?, Tel_Cel = ? where Id_Cuenta =  ?";
        try {
            Stmp();
            statemen = conector.prepareStatement(modInfoCuenta);
            statemen.setString(1, datosQueja.getCorreo());
            statemen.setString(2, datosQueja.getContraseña());
            statemen.setString(3, datosQueja.getTel_Cel());
            statemen.setInt(4, datosQueja.getId_Cuenta());

            int cont = statemen.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return retornarObj;
    }

    //Procedimiento para cambiar el estado de la cuenta
    public boolean cambiar_estado(EntCuentas datosCuenta) {
        conectarse();
        boolean retornarObj = false;
        String cambio_est = "update Cuenta_Usuario set  Estado = ? where Id_Cuenta = ?";
        try {
            Stmp();
            statemen = conector.prepareStatement(cambio_est);
            statemen.setString(1, datosCuenta.getEstado());
            statemen.setInt(2, datosCuenta.getId_Cuenta());

            int cont = statemen.executeUpdate();
            if (cont > 0) {
                retornarObj = true;
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return retornarObj;
    }

}
