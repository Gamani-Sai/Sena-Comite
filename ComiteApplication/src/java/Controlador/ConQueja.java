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
import Entidad.EntQueja;
import Modelo.Quejas;
import java.sql.ResultSet;

/**
 *
 * @author gestion
 */
@WebServlet(name = "ConQueja", urlPatterns = {"/ConQueja"})
public class ConQueja extends HttpServlet {

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

    //Procedimiento que lista los datos
    public String listar() {

        String tbl = "";
        ResultSet Result = null;

        try {
            Result = Que.ConsulQuejas();
            while (Result.next()) {
                tbl += "<tr>";
                tbl += "<td Style='display:none'><center>" + Result.getString("ID_QUEJA").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("NOMBRE").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("APELLIDO").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("IDENTIFICACIÓN").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("N_Ficha").toString().trim() + "</center></td>";
                tbl += "<td Style='display:none'><center>" + Result.getString("Tipo_Queja").toString().trim() + "</center></td>";
                tbl += "<td Style='display:none'><center>" + Result.getString("Descripcion").toString().trim() + "</center></td>";
                tbl += "<td Style='display:none'><center>" + Result.getString("Especialidad").toString().trim() + "</center></td>";
                tbl += "<td><center><button  class='btn btn-primary fa fa-edit' data-toggle='modal' data-target='#myModal' onclick='mapear.infoAprendriz(" + '\"' + Result.getString("ID_QUEJA").toString().trim() + '\"' + "," + '\"' + Result.getString("NOMBRE").toString().trim() + '\"' + "," + '\"' + Result.getString("APELLIDO").toString().trim() + '\"' + "," + '\"' + Result.getString("IDENTIFICACIÓN").toString().trim() + '\"' + "," + '\"' + Result.getString("N_Ficha").toString().trim() + '\"' + "," + '\"' + Result.getString("Especialidad").toString().trim() + '\"' + ")' ></button></center></td>";
                tbl += "<td><center><button  class='btn btn-success fa fa-plus-circle' data-toggle='modal' data-target='#myModal1' onclick='mapear.infoQueja(" + '\"' + Result.getString("ID_QUEJA").toString().trim() + '\"' + "," + '\"' + Result.getString("Tipo_Queja").toString().trim() + '\"' + "," + '\"' + Result.getString("Descripcion").toString().trim() + '\"' + ")' ></button></center></td>";
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
        String alert = "";
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String Evento = request.getParameter("evento");

            if (Evento != null) {

                if (Evento.equals("Guardar")) {
                    String Nombre = request.getParameter("Nombre");
                    String Apellido = request.getParameter("Apellido");
                    String Identificación = request.getParameter("Identificacion");
                    String N_Ficha = request.getParameter("N_Ficha");
                    String Tipo_Queja = request.getParameter("TipoQueja");
                    String Descripcion = request.getParameter("Descricion");
                    String Especialidad = request.getParameter("Especialidad");
                    //String Evidencia = request.getParameter("fourthFile1");

                    DatosQueja.setNombre(Nombre);
                    DatosQueja.setApellido(Apellido);
                    DatosQueja.setIdentificación(Identificación);
                    DatosQueja.setN_Ficha(N_Ficha);
                    DatosQueja.setTipo_Queja(Tipo_Queja);
                    DatosQueja.setDescripcion(Descripcion);
                    DatosQueja.setEspecialidad(Especialidad);
                    //DatosQueja.setEvidencia(Evidencia);

                    //Que.InsertQueja(DatosQueja);
                    if (Que.InsertQueja(DatosQueja)) {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_SUCCESS,\n"
                                + "            title: 'Registro de queja',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Quejas.jsp").forward(request, response);
                    } else {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_DANGER,\n"
                                + "            title: 'Registro de queja',\n"
                                + "            message: 'No se pudo registrar',\n"
                                + "            closable: true,\n"
                                + "            closeByBackdrop: false,\n"
                                + "            closeByKeyboard: false,\n"
                                + "            draggable: true,\n"
                                + "            buttons: [{\n"
                                + "                cssClass: 'btn-DANGER',\n"
                                + "                label: 'Ok',\n"
                                + "                action: function(dialogRef){\n"
                                + "                    dialogRef.close();\n"
                                + "                }\n"
                                + "            }]\n"
                                + "        });";
                        alert += "</script>";
                        request.setAttribute("alert", alert);

                        getServletConfig().getServletContext().getRequestDispatcher("/Quejas.jsp").forward(request, response);
                    }

                }

                if (Evento.equals("modInfoAprendiz")) {
                    String Id_Queja = request.getParameter("Id_Queja");
                    String Nombre = request.getParameter("Nombre");
                    String Apellido = request.getParameter("Apellido");
                    String Identificación = request.getParameter("Identificacion");
                    String N_Ficha = request.getParameter("N_Ficha");
                    String Especialidad = request.getParameter("Especialidad");

                    DatosQueja.setId_Queja(Integer.parseInt(Id_Queja));
                    DatosQueja.setNombre(Nombre);
                    DatosQueja.setApellido(Apellido);
                    DatosQueja.setIdentificación(Identificación);
                    DatosQueja.setN_Ficha(N_Ficha);
                    DatosQueja.setEspecialidad(Especialidad);

                    //Que.modificarInfoAprendiz(DatosQueja);
                    if (Que.modificarInfoAprendiz(DatosQueja)) {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_SUCCESS,\n"
                                + "            title: 'Información del aprendiz',\n"
                                + "            message: 'Modificación Exitosa',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/ConsultarQueja.jsp").forward(request, response);

                    }
                }

                if (Evento.equals("modInfoQueja")) {
                    String Id_QuejaMod = request.getParameter("Id_QuejaMod");
                    String Tipo_Queja = request.getParameter("TipoQueja");
                    String Descripcion = request.getParameter("Descricion");

                    DatosQueja.setId_Queja(Integer.parseInt(Id_QuejaMod));
                    DatosQueja.setTipo_Queja(Tipo_Queja);
                    DatosQueja.setDescripcion(Descripcion);

                    //Que.modificarInfoQueja(DatosQueja);
                    if (Que.modificarInfoQueja(DatosQueja)) {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_SUCCESS,\n"
                                + "            title: 'Información de la queja',\n"
                                + "            message: 'Modificación Exitosa',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/ConsultarQueja.jsp").forward(request, response);

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
