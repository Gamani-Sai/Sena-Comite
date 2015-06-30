/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

/**
 *
 * @author Sena
 */
public class EntFechas {

    private int Id_Fechas = 0;
    private String Fecha_inicio = "";
    private String Fecha_fin = "";

    /**
     * @return the Id_Fechas
     */
    public int getId_Fechas() {
        return Id_Fechas;
    }

    /**
     * @param Id_Fechas the Id_Fechas to set
     */
    public void setId_Fechas(int Id_Fechas) {
        this.Id_Fechas = Id_Fechas;
    }

    /**
     * @return the Fecha_inicio
     */
    public String getFecha_inicio() {
        return Fecha_inicio;
    }

    /**
     * @param Fecha_inicio the Fecha_inicio to set
     */
    public void setFecha_inicio(String Fecha_inicio) {
        this.Fecha_inicio = Fecha_inicio;
    }

    /**
     * @return the Fecha_fin
     */
    public String getFecha_fin() {
        return Fecha_fin;
    }

    /**
     * @param Fecha_fin the Fecha_fin to set
     */
    public void setFecha_fin(String Fecha_fin) {
        this.Fecha_fin = Fecha_fin;
    }
}
