/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Entidad.EntCuentas;
import Modelo.Cuentas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gestion
 */
@WebServlet(name = "ConCuentas", urlPatterns = {"/ConCuentas"})
public class ConCuentas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    EntCuentas datosCuentas = new EntCuentas();
    Cuentas Cuen = new Cuentas();

    //Procedimiento que lista los datos
    public String listar() {

        String tbl = "";
        ResultSet Result = null;
        String colorEstado = "";
        String iconoEstado = "";
        String nomFuncion = "";
        try {
            Result = Cuen.ConsulCuentas();
            while (Result.next()) {
                tbl += "<tr>";
                tbl += "<td><center>" + Result.getString("NOMBRE").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("APELLIDO").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("IDENTIFICACIÓN").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("TEL_CEL").toString().trim() + "</center></td>";
                tbl += "<td><center><button  class='btn btn-primary fa fa-edit' data-toggle='modal' data-target='#myModal' onclick='mapear.Cuenta(" + Result.getString("NOMBRE").toString().trim() + '\"' + "," + '\"' + Result.getString("APELLIDO").toString().trim() + '\"' + '\"' + "," + '\"' + Result.getString("IDENTIFICACIÓN").toString().trim() + '\"' + '\"' + "," + '\"' + Result.getString("TEL_CEL").toString().trim() + '\"' + ")' ></button></center></td>";
                tbl += "</tr>";
            }
        } catch (Exception ex) {
            tbl = "error" + ex.getMessage();
        }
        return tbl;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String Evento = request.getParameter("evento");

            if (Evento != null) {
                //Se ingresan los datos
                if (Evento.equals("Guardar")) {
                    String Nombre = request.getParameter("Nombre");
                    String Apellido = request.getParameter("Apellido");
                    String Identificación = request.getParameter("Identificacion");
                    String Tel_Cel = request.getParameter("Telefono");
                    String Contraseña = request.getParameter("Contrasena");
                    String Estado = "Habilitado";

                    datosCuentas.setNombre(Nombre);
                    datosCuentas.setApellido(Apellido);
                    datosCuentas.setIdentificación(Identificación);
                    datosCuentas.setTel_Cel(Tel_Cel);
                    datosCuentas.setContraseña(Contraseña);
                    datosCuentas.setEstado(Estado);

                    Cuen.InsertCuentas(datosCuentas);
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
