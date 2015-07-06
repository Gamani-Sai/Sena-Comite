package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <meta name=\"description\" content=\"\">\r\n");
      out.write("        <meta name=\"author\" content=\"\">\r\n");
      out.write("\r\n");
      out.write("        <title>Inicio de sesion</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap Core CSS -->\r\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <!-- MetisMenu CSS -->\r\n");
      out.write("        <link href=\"css/metisMenu/metisMenu.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom CSS -->\r\n");
      out.write("        <link href=\"css/sb-admin-2.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom Fonts -->\r\n");
      out.write("        <link href=\"bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-4 col-md-offset-4\">\r\n");
      out.write("                    <div class=\"login-panel panel panel-default\">\r\n");
      out.write("                        <div class=\"panel-heading\">\r\n");
      out.write("                            <center>  \r\n");
      out.write("                                <h3 class=\"panel-title\">Inicio de sesion</h3>\r\n");
      out.write("                            </center>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"panel-body\">\r\n");
      out.write("                            <form role=\"form\">\r\n");
      out.write("                                <fieldset>\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                        <input class=\"form-control\" placeholder=\"Identificación\" name=\"\" type=\"text\" autofocus>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"form-group\">\r\n");
      out.write("                                        <input class=\"form-control\" placeholder=\"Contraseña\" name=\"password\" type=\"password\" value=\"\">\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <!-- Change this to a button or input when using this as a form -->\r\n");
      out.write("\r\n");
      out.write("                                </fieldset>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"panel-footer\">\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <a href=\"Menu.jsp\" class=\"btn btn-lg btn-success btn-block\">Iniciar</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"alert alert-success fade in\">\r\n");
      out.write("                        <strong>Fecha para próximo  comite</strong>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"alert alert-success fade in\">\r\n");
      out.write("                        <table class=\"table table-hover\">\r\n");
      out.write("                            <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <th>Fecha inicio</th>\r\n");
      out.write("                                    <th>Fecha fin</th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </thead>\r\n");
      out.write("                            <tbody>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>07/02/2015</td>\r\n");
      out.write("                                    <td>07/04/2015</td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </tbody>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"alert alert-success fade in\" style=\"width: 27%; margin-left: 928px; margin-top: -552px;\">\r\n");
      out.write("                <strong>Fecha para próximo  comite</strong>\r\n");
      out.write("                <button type=\"button\" class=\"btn btn-info  fa fa-eye\" data-toggle=\"modal\" data-target=\".bs-example-modal-lg\" style=\"margin-left: 36px;\"></button>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!--Modal de programas --> \r\n");
      out.write("            <div class=\"modal fade bs-example-modal-lg\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myLargeModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("                <div class=\"modal-dialog modal-lg\">\r\n");
      out.write("                    <div class=\"modal-content\">\r\n");
      out.write("                        <div class=\"modal-header\">\r\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\"><span aria-hidden=\"true\">&times;</span><span class=\"sr-only\">Close</span></button>\r\n");
      out.write("                            <h4 class=\"modal-title\" id=\"myModalLabel\">Modificar información de los programas</h4>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <form id=\"defaultForm\" action=\"\" method=\"POST\">\r\n");
      out.write("                            <div class=\"panel panel-default\">\r\n");
      out.write("                                <div class=\"panel-body\">\r\n");
      out.write("                                    <div class=\"tab-content\">\r\n");
      out.write("                                        <div class=\"tab-pane active\" id=\"area\">\r\n");
      out.write("\r\n");
      out.write("                                            <input class=\"form-control\" id=\"ID_PROGRAMATEC\" name=\"ID_PROGRAMATEC\" type=\"hidden\">\r\n");
      out.write("\r\n");
      out.write("                                            <table id=\"tblCuenta\" class=\"table table-hover\" cellspacing=\"0\">\r\n");
      out.write("                                                <thead>\r\n");
      out.write("                                                    <tr>\r\n");
      out.write("                                                        <th class=\"text-center\" Style=\"display:none\"></th>\r\n");
      out.write("                                                        <th class=\"text-center\">Nombre de programa</th> \r\n");
      out.write("                                                        <th class=\"text-center\">Estado</th>\r\n");
      out.write("                                                    </tr>\r\n");
      out.write("                                                </thead>\r\n");
      out.write("                                                <tbody id=\"Estado\">\r\n");
      out.write("\r\n");
      out.write("                                                </tbody>\r\n");
      out.write("                                            </table>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- jQuery -->\r\n");
      out.write("        <script src=\"js/jquery.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap Core JavaScript -->\r\n");
      out.write("        <script src=\"bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Metis Menu Plugin JavaScript -->\r\n");
      out.write("        <script src=\"css/metisMenu/metisMenu.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom Theme JavaScript -->\r\n");
      out.write("        <script src=\"js/sb-admin-2.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
