package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Controlador.ConCuentas;

public final class ConsultarCuentas_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <meta name=\"description\" content=\"\">\r\n");
      out.write("        <meta name=\"author\" content=\"\">\r\n");
      out.write("\r\n");
      out.write("        <title>Comite</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap Core CSS -->\r\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <!-- DateTable Core CSS --> \r\n");
      out.write("        <link href=\"bootstrap/css/dataTables.bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <!-- MetisMenu CSS -->\r\n");
      out.write("        <link href=\"css/metisMenu/metisMenu.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <!-- Timeline CSS -->\r\n");
      out.write("        <link href=\"css/timeline.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom CSS -->\r\n");
      out.write("        <link href=\"css/sb-admin-2.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <!-- Morris Charts CSS -->\r\n");
      out.write("        <link href=\"css/morris.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom Fonts -->\r\n");
      out.write("        <link href=\"bower_components/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <div id=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("            <!-- Navigation -->\r\n");
      out.write("            <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\" style=\"margin-bottom: 0\">\r\n");
      out.write("                <div class=\"navbar-header\">\r\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n");
      out.write("                        <span class=\"sr-only\">Comite</span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                    <a href=\"Menu.jsp\" class=\"navbar-brand\">COMITE</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- /.navbar-header -->\r\n");
      out.write("\r\n");
      out.write("                <ul class=\"nav navbar-top-links navbar-right\">\r\n");
      out.write("                    <!-- /.dropdown -->\r\n");
      out.write("                    <li class=\"dropdown\">\r\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\r\n");
      out.write("                            <i class=\"fa fa-user\"></i> Jean Mazo <b class=\"caret\"></b>\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <ul class=\"dropdown-menu dropdown-user\">\r\n");
      out.write("\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"index.jsp\"><i class=\"fa fa-sign-out fa-fw\"></i> Cerrar sesión</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <!-- /.dropdown-user -->\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <!-- /.dropdown -->\r\n");
      out.write("                </ul>\r\n");
      out.write("                <!-- /.navbar-top-links -->\r\n");
      out.write("\r\n");
      out.write("                <div class=\"navbar-default sidebar\" role=\"navigation\">\r\n");
      out.write("                    <div class=\"sidebar-nav navbar-collapse\">\r\n");
      out.write("                        <ul class=\"nav\" id=\"side-menu\">\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-files-o fa-fw\"></i>Recepción de quejas<span class=\"fa arrow\"></span></a>\r\n");
      out.write("                                <ul class=\"nav nav-second-level\">\r\n");
      out.write("                                    <li>\r\n");
      out.write("                                        <a href=\"Quejas.jsp\">Registar queja</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li>\r\n");
      out.write("                                        <a href=\"#\">Consultar quejas</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                                <!-- /.nav-second-level -->\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-edit fa-fw\"></i> Citación Aprendiz Comite</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"#\"><i class=\"fa fa-table fa-fw\"></i> Comite De Evaluación</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a class=\"active\" href=\"#\"><i class=\"fa fa-users fa-fw\"></i> Cuentas de Usuarios<span class=\"fa arrow\"></span></a>\r\n");
      out.write("                                <ul class=\"nav nav-second-level\">\r\n");
      out.write("                                    <li>\r\n");
      out.write("                                        <a href=\"Cuentas.jsp\">Registar Cuenta</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li>\r\n");
      out.write("                                        <a class=\"active\" href=\"ConsultarCuentas.jsp\">Consultar Cuenta</a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- /.sidebar-collapse -->\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- /.navbar-static-side -->\r\n");
      out.write("            </nav>\r\n");
      out.write("\r\n");
      out.write("            <div id=\"page-wrapper\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-lg-12\">\r\n");
      out.write("                        <h3 class=\"page-header\">Cuentas de Usuarios</h3>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- /.col-lg-12 -->\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- /.row -->\r\n");
      out.write("\r\n");
      out.write("                <div class=\"tab-content\">\r\n");
      out.write("                    <div class=\"tab-pane active\" id=\"area\">\r\n");
      out.write("                        <table id=\"tblCuenta\" class=\"table table-hover\" cellspacing=\"0\">\r\n");
      out.write("                            <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <th class=\"text-center\">Nombres</th>\r\n");
      out.write("                                    <th class=\"text-center\">Apellidos</th>\r\n");
      out.write("                                    <th class=\"text-center\">Identificacion</th>\r\n");
      out.write("                                    <th class=\"text-center\">Tel o Cel</th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </thead>\r\n");
      out.write("                            <tbody>\r\n");
      out.write("                                ");

                            ConCuentas list_Cuenta = new ConCuentas();
                            out.println(list_Cuenta.listar());

                        
      out.write("\r\n");
      out.write("                            </tbody>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /page-wrapper -->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /#wrapper -->\r\n");
      out.write("\r\n");
      out.write("        <footer>\r\n");
      out.write("            <p>Posted by: Hege Refsnes</p>\r\n");
      out.write("            <p>Contact information: <a href=\"mailto:someone@example.com\">\r\n");
      out.write("                    someone@example.com</a>.</p>\r\n");
      out.write("        </footer>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- jQuery -->\r\n");
      out.write("        <script src=\"js/jquery.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Bootstrap Core JavaScript -->\r\n");
      out.write("        <script src=\"bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- DateTable  JavaScript -->\r\n");
      out.write("        <script src=\"bootstrap/js/jquery.dataTables.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"bootstrap/js/dataTables.bootstrap.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Metis Menu Plugin JavaScript -->\r\n");
      out.write("        <script src=\"css/metisMenu/metisMenu.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Morris Charts JavaScript -->\r\n");
      out.write("        <script src=\"js/raphael-min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script src=\"js/morris.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom Theme JavaScript -->\r\n");
      out.write("        <script src=\"js/sb-admin-2.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            $(document).ready(function () {\r\n");
      out.write("                $('#tblCuenta').dataTable({\r\n");
      out.write("                    \"oLanguage\": {\r\n");
      out.write("                        \"sUrl\": \"bootstrap/js/Spanish.json\"\r\n");
      out.write("                    }\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>");
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
