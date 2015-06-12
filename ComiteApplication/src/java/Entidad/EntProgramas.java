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
public class EntProgramas {

    private int Id_Programa = 0;
    private String Nombre_Programa = "";
    private String Estado = "";

    /**
     * @return the Id_Programa
     */
    

    /**
     * @return the Nombre_Programa
     */
    public String getNombre_Programa() {
        return Nombre_Programa;
    }

    /**
     * @param Nombre_Programa the Nombre_Programa to set
     */
    public void setNombre_Programa(String Nombre_Programa) {
        this.Nombre_Programa = Nombre_Programa;
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
     * @return the Id_Programa
     */
    public int getId_Programa() {
        return Id_Programa;
    }

    /**
     * @param Id_Programa the Id_Programa to set
     */
    public void setId_Programa(int Id_Programa) {
        this.Id_Programa = Id_Programa;
    }
}
