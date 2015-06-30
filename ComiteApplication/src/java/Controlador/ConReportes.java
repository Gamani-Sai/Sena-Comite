/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Entidad.EntQueja;
import Modelo.Reportes;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sena
 */
@WebServlet(name = "ConReportes", urlPatterns = {"/ConReportes"})
public class ConReportes extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    EntQueja DatosQueja = new EntQueja();
    Reportes Rep = new Reportes();

    //Procedimiento para listar el historial
    public String listar() {

        String tbl = "";
        ResultSet Result = null;

        try {
            Result = Rep.pruConReporteAprendiz();
            while (Result.next()) {
                tbl += "<tr>";
                tbl += "<td><center>" + Result.getString("Nombre_com").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("IDENTIFICACIÓN").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("N_Ficha").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("FECHA").toString().trim() + "</center></td>";
                tbl += "<td><center><button  class='btn btn-default fa fa-eye' data-toggle='modal' data-target='#myModal' onclick='mapear.DescicionApren(" + '\"' + Result.getString("Descripcion").toString().trim() + '\"' + ")' ></button></center></td>";
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
            String Traer = request.getParameter("Buscar");
            String opciones = request.getParameter("opciones");

            if (opciones.equals("Nombre")) {
                DatosQueja.setNombre(Traer);
            } else if (opciones.equals("Apellido")) {
                DatosQueja.setApellido(opciones);
            } else if (opciones.equals("Identificacion")) {
                DatosQueja.setIdentificación(opciones);
            } else if (opciones.equals("Ficha")) {
                DatosQueja.setN_Ficha(opciones);
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
