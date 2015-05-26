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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gestion
 */
@WebServlet(name = "ConProgramas", urlPatterns = {"/ConProgramas"})
public class ConProgramas extends HttpServlet {

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

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String alert="";
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            String Evento = request.getParameter("evento");

            if (Evento.equals("Guardar")) {
                String radio = request.getParameter("opciones");
                String Nombre = request.getParameter("Nombre");
                DatosProgramas.setNombre_Programa(Nombre);

                if (radio.equals("Tecnologo")) {
                    //Pro.InsertProgramas(DatosProgramas);
                    if (Pro.InsertProgramas(DatosProgramas)) {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_SUCCESS,\n"
                                + "            title: 'Registro de programas de formación',\n"
                                + "            message: 'Registro exitoso',\n"
                                + "            closable: true,\n"
                                + "            closeByBackdrop: false,\n"
                                + "            closeByKeyboard: false,\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Programas.jsp").forward(request, response);
                    } else {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_DANGER,\n"
                                + "            title: 'Registro de programas de formación',\n"
                                + "            message: 'No se pudo registrar',\n"
                                + "            closable: true,\n"
                                + "            closeByBackdrop: false,\n"
                                + "            closeByKeyboard: false,\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Programas.jsp").forward(request, response);
                    }
                } else if (radio.equals("Tecnico")) {
                    //Pro.InsertProgramas(DatosProgramas);
                    if (Pro.InsertProgramasTecnico(DatosProgramas)) {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_SUCCESS,\n"
                                + "            title: 'Registro de programas de formación',\n"
                                + "            message: 'Registro exitoso',\n"
                                + "            closable: true,\n"
                                + "            closeByBackdrop: false,\n"
                                + "            closeByKeyboard: false,\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Programas.jsp").forward(request, response);
                    } else {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_DANGER,\n"
                                + "            title: 'Registro de programas de formación',\n"
                                + "            message: 'No se pudo registrar',\n"
                                + "            closable: true,\n"
                                + "            closeByBackdrop: false,\n"
                                + "            closeByKeyboard: false,\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Programas.jsp").forward(request, response);
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
