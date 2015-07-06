/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.Fechas;
import Entidad.EntFechas;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sena
 */
@WebServlet(name = "ConFechas", urlPatterns = {"/ConFechas"})
public class ConFechas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    EntFechas datosFechas = new EntFechas();
    Fechas Fech = new Fechas();

    //Procedimiento que inserta o modifica las fecha para el comite
    public boolean FechaInsUpt() throws SQLException {
        String Fecha_inicio = "";
        String Fecha_fin = "";
        boolean Acion = false;
        ResultSet Rs_Fechas = Fech.Fechas();
        while (Rs_Fechas.next()) {
            Fecha_inicio = Rs_Fechas.getString("Fecha_inicio");
            Fecha_fin = Rs_Fechas.getString("Fecha_fin");
        }
        if (Fecha_inicio.equals("") && Fecha_fin.equals("")) {
            Acion = Fech.InsertFechas(datosFechas);
        } else {
            Acion = Fech.modificarmodFechas(datosFechas);
        }
        return Acion;
    }

    //Procedimiento que lista los datos
    public String listar() {

        String tbl = "";
        ResultSet Result = null;

        try {
            Result = Fech.Fechas();
            while (Result.next()) {
                tbl += "<tr>";
                tbl += "<td><center>" + Result.getString("Fecha_inicio").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("Fecha_fin").toString().trim() + "</center></td>";
                tbl += "</tr>";
            }
        } catch (Exception ex) {
            tbl = "error" + ex.getMessage();
        }
        return tbl;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        String alert = "";
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            String Evento = request.getParameter("evento");

            if (Evento != null) {
                if (Evento.equals("Guardar")) {
                    String Fecha_inicio = request.getParameter("Fechainicio");
                    String Fecha_fin = request.getParameter("Fechafin");
                    datosFechas.setFecha_inicio(Fecha_inicio);
                    datosFechas.setFecha_fin(Fecha_fin);

                    if (FechaInsUpt()) {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_SUCCESS,\n"
                                + "            title: 'Registro de fecha comite',\n"
                                + "            message: 'Registro Exitoso',\n"
                                + "            closable: true,\n"
                                + "            closeByBackdrop: true,\n"
                                + "            closeByKeyboard: true,\n"
                                + "            draggable: true,\n"
                                + "            buttons: [{\n"
                                + "                cssClass: 'btn-success',\n"
                                + "                label: 'Ok',\n"
                                + "                action: function(dialogRef){\n"
                                + "                    dialogRef.close();\n"
                                + "                }\n"
                                + "            }]\n"
                                + "        });";
                        alert += "</script>";
                        request.setAttribute("alert", alert);

                        getServletConfig().getServletContext().getRequestDispatcher("/FechasComite.jsp").forward(request, response);
                    } else {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_DANGER,\n"
                                + "            title: 'Registro de fecha comite',\n"
                                + "            message: 'No se pudo ingresar los datos',\n"
                                + "            closable: true,\n"
                                + "            closeByBackdrop: true,\n"
                                + "            closeByKeyboard: true,\n"
                                + "            draggable: true,\n"
                                + "            buttons: [{\n"
                                + "                cssClass: 'btn-danger',\n"
                                + "                label: 'Ok',\n"
                                + "                action: function(dialogRef){\n"
                                + "                    dialogRef.close();\n"
                                + "                }\n"
                                + "            }]\n"
                                + "        });";
                        alert += "</script>";
                        request.setAttribute("alert", alert);

                        getServletConfig().getServletContext().getRequestDispatcher("/FechasComite.jsp").forward(request, response);
                    }

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ConFechas.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ConFechas.class.getName()).log(Level.SEVERE, null, ex);
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
