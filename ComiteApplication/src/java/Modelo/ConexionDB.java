/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Gamani Sai
 */
public class ConexionDB {

    public Connection conector;
    public Statement consulta;
    public ResultSet resultado;

    public Connection conectarse() {

        try {
            Class.forName("oracle.jdbc.OracleDriver");

            conector = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "COMITE_DB", "system");

        } catch (ClassNotFoundException CNFE) {
            //SQLException
        } catch (SQLException Ex) {

        }
        return conector;
    }

    public Statement Stmp() {
        return this.consulta;
    }
}
