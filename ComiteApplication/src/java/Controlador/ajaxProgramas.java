/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Entidad.EntProgramas;
import Modelo.Programas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gestion
 */
@WebServlet(name = "ajaxProgramas", urlPatterns = {"/ajaxProgramas"})
public class ajaxProgramas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    EntProgramas DatosProgramas = new EntProgramas();
    Programas Pro = new Programas();

    public String Datos(String Radio) throws SQLException {
        String Recorrer = "";
        ResultSet Rs = null;

        if (Radio.equals("Tecnologo")) {
            Recorrer += "<select name=\"Especialidad\"  id=\"select2\">";
            Rs = Pro.traerProgramas1();
            while (Rs.next()) {
                Recorrer += "<option  value='" + Rs.getString("Nombre_Programa") + "' >" + Rs.getString("Nombre_Programa") + "</option>";
            }
            Recorrer += "</select>";
        } else if (Radio.equals("Tecnico")) {
            Recorrer += "<select name=\"Especialidad\"  id=\"select2\">";
            Rs = Pro.traerProgramasTec1();
            while (Rs.next()) {
                Recorrer += "<option  value='" + Rs.getString("Nombre_ProgramaTec") + "' >" + Rs.getString("Nombre_ProgramaTec") + "</option>";
            }
            Recorrer += "</select>";
        }

        return Recorrer;

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String radio = request.getParameter("opciones");
            out.println(Datos(radio));
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ajaxProgramas.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ajaxProgramas.class.getName()).log(Level.SEVERE, null, ex);
        }
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
