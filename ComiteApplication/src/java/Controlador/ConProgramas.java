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

    //Procedimiento que lista los datos
    public String listar() {

        String tbl = "";
        ResultSet Result = null;
        String colorEstado = "";
        String iconoEstado = "";
        String nomFuncion = "";
        try {
            //Consulta de tecnologos
            Result = Pro.traerProgramas();
            while (Result.next()) {
                tbl += "<tr>";
                tbl += "<td style='display:none'><center>" + Result.getString("ID_PROGRAMA").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("Nombre_Programa").toString().trim() + "</center></td>";

                if (Result.getString("Estado").toString().trim().equals("Habilitado")) {
                    colorEstado = "success";
                    iconoEstado = "ok-circle";
                    nomFuncion = "Estado_habilitado(" + Result.getString("ID_PROGRAMA").toString().trim() + ",'tecnologo')";
                } else if (Result.getString("Estado").toString().trim().equals("Inhabilitado")) {
                    colorEstado = "danger";
                    iconoEstado = "remove-circle";
                    nomFuncion = "Estado_inhabilitado(" + Result.getString("ID_PROGRAMA").toString().trim() + ",'tecnologo')";
                }
                tbl += "<td><center><div id='cambio_est'><button  class='btn btn-" + colorEstado + " glyphicon glyphicon-" + iconoEstado + "' onclick =" + nomFuncion + "></button></center></div></center></td>";
                tbl += "</tr>";

            }
            //Consulta de tecnicos
            Result = Pro.traerProgramasTec();
            while (Result.next()) {
                tbl += "<tr>";
                tbl += "<td style='display:none'><center>" + Result.getString("ID_PROGRAMATEC").toString().trim() + "</center></td>";
    
                tbl += "<td><center>" + Result.getString("Nombre_ProgramaTec").toString().trim() + "</center></td>";

                if (Result.getString("EstadoTec").toString().trim().equals("Habilitado")) {
                    colorEstado = "success";
                    iconoEstado = "ok-circle";
                    nomFuncion = "Estado_habilitado(" + Result.getString("ID_PROGRAMATEC").toString().trim() + ",'tecnico')";
                } else if (Result.getString("EstadoTec").toString().trim().equals("Inhabilitado")) {
                    colorEstado = "danger";
                    iconoEstado = "remove-circle";
                    nomFuncion = "Estado_inhabilitado(" + Result.getString("ID_PROGRAMATEC").toString().trim() + ",'tecnico')";
                }
                tbl += "<td><center><div id='cambio_est'><button  class='btn btn-" + colorEstado + " glyphicon glyphicon-" + iconoEstado + "' onclick =" + nomFuncion + "></button></center></div></center></td>";
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
            String ConTecnolo = "Tecnologo";
            String ConTec = "Tecnico";
            String estado = request.getParameter("estado_mod");
           

            if (Evento.equals("Guardar")) {

                String radio = request.getParameter("opciones");

                if (radio.equals("Tecnologo")) {
                    String Tecnologo = "";
                    String Nombre = request.getParameter("Nombre");
                    Tecnologo = ConTecnolo + " " + Nombre;
                    String Estado = "Habilitado";
                    DatosProgramas.setEstado(Estado);
                    DatosProgramas.setNombre_Programa(Tecnologo);
                    //Pro.InsertProgramas(DatosProgramas);
                    if (Pro.InsertProgramas(DatosProgramas)) {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_SUCCESS,\n"
                                + "            title: 'Registro de programas de formación',\n"
                                + "            message: 'Registro exitoso',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Programas.jsp").forward(request, response);
                    } else {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_DANGER,\n"
                                + "            title: 'Registro de programas de formación',\n"
                                + "            message: 'No se pudo registrar',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Programas.jsp").forward(request, response);
                    }
                } else if (radio.equals("Tecnico")) {
                    String Tecnico = "";
                    String Nombre = request.getParameter("Nombre");
                    Tecnico = ConTec + " " + Nombre;
                    DatosProgramas.setNombre_Programa(Tecnico);

                    //Pro.InsertProgramas(DatosProgramas);
                    if (Pro.InsertProgramasTecnico(DatosProgramas)) {

                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_SUCCESS,\n"
                                + "            title: 'Registro de programas de formación',\n"
                                + "            message: 'Registro exitoso',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Programas.jsp").forward(request, response);
                    } else {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_DANGER,\n"
                                + "            title: 'Registro de programas de formación',\n"
                                + "            message: 'No se pudo registrar',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Programas.jsp").forward(request, response);
                    }
                }
            } else if (Evento.equals("recargue")) {
                out.println(listar());
            }else if (Evento.equals("cam_estado")) {
                
                
                //......-----------------------------------//
                int id_programas_mod = Integer.parseInt(request.getParameter("idprogramas_mod"));
                String tipo = request.getParameter("tipo");
                DatosProgramas.setId_Programa(id_programas_mod);
                DatosProgramas.setEstado(estado);
                if (tipo.equals("tecnico")){
                    Pro.cambiar_estadotec(DatosProgramas);
                }else if(tipo.equals("tecnologo")){
                     Pro.cambiar_estado(DatosProgramas);
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
