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
                tbl += "<td Style='display:none'><center>" + Result.getString("ID_CUENTA").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("NOMBRE").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("APELLIDO").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("IDENTIFICACIÓN").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("TEL_CEL").toString().trim() + "</center></td>";
                tbl += "<td><center><button  class='btn btn-primary fa fa-edit' data-toggle='modal' data-target='#myModal' onclick='mapear.Cuentas(" + '\"' + Result.getString("ID_CUENTA").toString().trim() + '\"' + "," + '\"' + Result.getString("Nombrecompleto").toString().trim() + '\"' + "," + '\"' + Result.getString("CORREO").toString().trim() + '\"' + "," + '\"' + Result.getString("TEL_CEL").toString().trim() + '\"' + ")' ></button></center></td>";

                if (Result.getString("Estado").toString().trim().equals("Habilitado")) {
                    colorEstado = "success";
                    iconoEstado = "ok-circle";
                    nomFuncion = "Estado_habilitado(" + Result.getString("ID_CUENTA").toString().trim() + ")";
                } else if (Result.getString("Estado").toString().trim().equals("Inhabilitado")) {
                    colorEstado = "danger";
                    iconoEstado = "remove-circle";
                    nomFuncion = "Estado_inhabilitado(" + Result.getString("ID_CUENTA").toString().trim() + ")";
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
            String estado = request.getParameter("estado_mod");
            String recargar = request.getParameter("recargar");

            if (Evento != null) {

                //Se ingresan los datos
                if (Evento.equals("Guardar")) {
                    String Nombre = request.getParameter("Nombre");
                    String Apellido = request.getParameter("Apellido");
                    String Identificación = request.getParameter("Identificacion");
                    String Tel_Cel = request.getParameter("Telefono");
                    String Contraseña = request.getParameter("Contrasena");
                    String Correo = request.getParameter("Correo");
                    String Estado = "Habilitado";

                    datosCuentas.setNombre(Nombre);
                    datosCuentas.setApellido(Apellido);
                    datosCuentas.setIdentificación(Identificación);
                    datosCuentas.setTel_Cel(Tel_Cel);
                    datosCuentas.setContraseña(Contraseña);
                    datosCuentas.setEstado(Estado);
                    datosCuentas.setCorreo(Correo);

                    //Cuen.InsertCuentas(datosCuentas);
                    if (Cuen.InsertCuentas(datosCuentas)) {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_SUCCESS,\n"
                                + "            title: 'Registro de la cuenta',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Cuentas.jsp").forward(request, response);
                    } else {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_DANGER,\n"
                                + "            title: 'Registro de la cuenta',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/Cuentas.jsp").forward(request, response);
                    }

                }

                //Se modifican los datos
                if (Evento.equals("Modificar")) {
                    String Id_Cuenta = request.getParameter("Id_Cuenta");
                    String Correo = request.getParameter("Correo");
                    String Contraseña = request.getParameter("Contrasena");
                    String Tel_Cel = request.getParameter("Telefono");

                    datosCuentas.setId_Cuenta(Integer.parseInt(Id_Cuenta));
                    datosCuentas.setCorreo(Correo);
                    datosCuentas.setContraseña(Contraseña);
                    datosCuentas.setTel_Cel(Tel_Cel);

                    //Cuen.modificarInfoCuenta(datosCuentas);
                    if (Cuen.modificarInfoCuenta(datosCuentas)) {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_SUCCESS,\n"
                                + "            title: 'Información de la cuenta',\n"
                                + "            message: 'Modificación Exitosa',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/ConsultarCuentas.jsp").forward(request, response);
                    } else {
                        alert += "<script type=\"text/javascript\">";
                        alert += "BootstrapDialog.show({\n"
                                + "            type: BootstrapDialog.TYPE_DANGER,\n"
                                + "            title: 'Información de la cuenta',\n"
                                + "            message: 'No se pudo realizar los cambiós',\n"
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

                        getServletConfig().getServletContext().getRequestDispatcher("/ConsultarCuentas.jsp").forward(request, response);
                    }
                }
            } else if (estado != null) {
                int id_cuenta_mod = Integer.parseInt(request.getParameter("idcuenta_mod"));
                datosCuentas.setId_Cuenta(id_cuenta_mod);
                datosCuentas.setEstado(estado);
                Cuen.cambiar_estado(datosCuentas);

            } else if (recargar != null) {
                out.println(listar());
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
