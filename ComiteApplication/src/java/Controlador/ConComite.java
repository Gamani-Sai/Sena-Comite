/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Entidad.EntQueja;
import Modelo.Quejas;
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
 * @author Sena
 */
@WebServlet(name = "ConComite", urlPatterns = {"/ConComite"})
public class ConComite extends HttpServlet {

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
    Quejas Que = new Quejas();

    public String listar() {

        String tbl = "";
        ResultSet Result = null;

        try {
            Result = Que.ConsulQuejas();
            while (Result.next()) {
                tbl += "<div class=\"panel-group\" id=\"steps\">\n"
                        + "                                    <!-- Step 1 -->\n"
                        + "\n"
                        + "                                    <div class=\"panel panel-default\">\n"
                        + "                                        <div class=\"panel-heading\">\n"
                        + "                                            <h4 class=\"panel-title\"><a data-toggle=\"collapse\" data-parent=\"#steps\" href=\"#stepOne\">Información del aprendiz</a></h4>\n"
                        + "                                        </div>\n"
                        + "                                        <div id=\"stepOne\" class=\"panel-collapse collapse in\">\n"
                        + "                                            <div class=\"panel-body\">\n"
                        + "\n"
                        + "                                                <div class=\"form-group col-lg-6\">\n"
                        + "                                                    <input class=\"form-control\" placeholder=\"Nombre\" name=\"Nombre\" type=\"text\">\n"
                        + "                                                </div>\n"
                        + "\n"
                        + "                                                <div class=\"form-group col-lg-6\">\n"
                        + "                                                    <input class=\"form-control\" placeholder=\"Apellido\" name=\"Apellido\" type=\"text\" value=\"\">\n"
                        + "                                                </div>\n"
                        + "\n"
                        + "                                                <div class=\"form-group col-lg-6\">\n"
                        + "                                                    <input class=\"form-control\" placeholder=\"Identificación\" name=\"Identificacion\" type=\"text\" value=\"\">\n"
                        + "                                                </div>\n"
                        + "\n"
                        + "                                                <div class=\"form-group col-lg-6\">\n"
                        + "                                                    <input class=\"form-control\" placeholder=\"N° De Ficha\" name=\"N_Ficha\" type=\"text\" value=\"\">\n"
                        + "                                                </div>\n"
                        + "\n"
                        + "                                                <div class=\"form-group col-lg-12\">\n"
                        + "                                                    <input type=\"hidden\" id=\"disabledTextInput\" class=\"form-control\"  name=\"Fecha\" readonly=\"readonly\" value=\"<%=Formato.format(Fecha)%>\">\n"
                        + "                                                </div>\n"
                        + "\n"
                        + "                                                <div class=\"form-group col-lg-12\" id=\"traer\" >\n"
                        + "                                                </div>\n"
                        + "\n"
                        + "                                            </div>\n"
                        + "                                        </div>\n"
                        + "                                    </div>";
                tbl += "</div>";
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ConComite</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConComite at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
