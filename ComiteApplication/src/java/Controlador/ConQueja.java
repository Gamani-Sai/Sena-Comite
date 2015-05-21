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
                tbl += "<td><center>" + Result.getString("NOMBRE").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("APELLIDO").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("IDENTIFICACIÓN").toString().trim() + "</center></td>";
                tbl += "<td><center>" + Result.getString("N_Ficha").toString().trim() + "</center></td>";
                tbl += "<td Style='display:none'><center>" + Result.getString("Tipo_Queja").toString().trim() + "</center></td>";
                tbl += "<td Style='display:none'><center>" + Result.getString("Descripcion").toString().trim() + "</center></td>";
                tbl += "<td Style='display:none'><center>" + Result.getString("Especialidad").toString().trim() + "</center></td>";
                tbl += "<td><center><button  class='btn btn-primary fa fa-edit' data-toggle='modal' data-target='#myModal' onclick='mapear.infoAprendriz(" + '\"' + Result.getString("NOMBRE").toString().trim() + '\"' + "," + '\"' + Result.getString("APELLIDO").toString().trim() + '\"' + "," + '\"' + Result.getString("IDENTIFICACIÓN").toString().trim() + '\"' + "," + '\"' + Result.getString("N_Ficha").toString().trim() + '\"' + "," + '\"' + Result.getString("Especialidad").toString().trim() + '\"' + ")' ></button></center></td>";
                tbl += "<td><center><button  class='btn btn-success fa fa-plus-circle' data-toggle='modal' data-target='#myModal1' onclick='mapear.infoQueja(" + '\"' + Result.getString("Tipo_Queja").toString().trim() + '\"' + "," + '\"' + Result.getString("Descripcion").toString().trim() + '\"' + ")' ></button></center></td>";
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

                if (Evento.equals("Guardar")) {
                    String Nombre = request.getParameter("Nombre");
                    String Apellido = request.getParameter("Apellido");
                    String Identificación = request.getParameter("Identificacion");
                    String N_Ficha = request.getParameter("N_Ficha");
                    String Tipo_Queja = request.getParameter("TipoQueja");
                    String Descripcion = request.getParameter("Descricion");
                    String Especialidad = request.getParameter("Especialidad");
                    String Evidencia = request.getParameter("fourthFile1");

                    DatosQueja.setNombre(Nombre);
                    DatosQueja.setApellido(Apellido);
                    DatosQueja.setIdentificación(Identificación);
                    DatosQueja.setN_Ficha(N_Ficha);
                    DatosQueja.setTipo_Queja(Tipo_Queja);
                    DatosQueja.setDescripcion(Descripcion);
                    DatosQueja.setEspecialidad(Especialidad);
                    DatosQueja.setEvidencia(Evidencia);

                    Que.InsertQueja(DatosQueja);

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
