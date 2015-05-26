/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

/**
 *
 * @author gestion
 */
public class EntCuentas {

    private int Id_Cuenta = 0;
    private String Nombre = "";
    private String Apellido = "";
    private String Identificación = "";
    private String Tel_Cel = "";
    private String Contraseña = "";
    private String Estado = "";
    private String Correo = "";

    /**
     * @return the Id_Cuenta
     */
    public int getId_Cuenta() {
        return Id_Cuenta;
    }

    /**
     * @param Id_Cuenta the Id_Cuenta to set
     */
    public void setId_Cuenta(int Id_Cuenta) {
        this.Id_Cuenta = Id_Cuenta;
    }

    /**
     * @return the Nombre
     */
    public String getNombre() {
        return Nombre;
    }

    /**
     * @param Nombre the Nombre to set
     */
    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    /**
     * @return the Apellido
     */
    public String getApellido() {
        return Apellido;
    }

    /**
     * @param Apellido the Apellido to set
     */
    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    /**
     * @return the Identificación
     */
    public String getIdentificación() {
        return Identificación;
    }

    /**
     * @param Identificación the Identificación to set
     */
    public void setIdentificación(String Identificación) {
        this.Identificación = Identificación;
    }

    /**
     * @return the Tel_Cel
     */
    public String getTel_Cel() {
        return Tel_Cel;
    }

    /**
     * @param Tel_Cel the Tel_Cel to set
     */
    public void setTel_Cel(String Tel_Cel) {
        this.Tel_Cel = Tel_Cel;
    }

    /**
     * @return the Contraseña
     */
    public String getContraseña() {
        return Contraseña;
    }

    /**
     * @param Contraseña the Contraseña to set
     */
    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }

    /**
     * @return the Estado
     */
    public String getEstado() {
        return Estado;
    }

    /**
     * @param Estado the Estado to set
     */
    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    /**
     * @return the Correo
     */
    public String getCorreo() {
        return Correo;
    }

    /**
     * @param Correo the Correo to set
     */
    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public void setId_Cuenta(String Id_Cuenta) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
