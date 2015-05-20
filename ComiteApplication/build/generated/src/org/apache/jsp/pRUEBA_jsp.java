package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class pRUEBA_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!-- release v4.2.0, copyright 2014 - 2015 Kartik Visweswaran -->\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\"/>\n");
      out.write("        <title>Krajee JQuery Plugins - &copy; Kartik</title>\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/fileinput/fileinput.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"js/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"css/fileinput/fileinput.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"css/fileinput/fileinput_locale_es.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container kv-main\">\n");
      out.write("            <hr>\n");
      out.write("            <h4>Multi Language Inputs</h4>\n");
      out.write("            <form enctype=\"multipart/form-data\">\n");
      out.write("                <div class=\"modal fade\">\n");
      out.write("                    <div class=\"modal-dialog\">\n");
      out.write("                        <div class=\"modal-content\">\n");
      out.write("                            <div class=\"modal-header\">\n");
      out.write("                                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">×</button>\n");
      out.write("                                <h4 class=\"modal-title\">Modal title</h4>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal-body\">\n");
      out.write("                                <p>One fine body?</p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal-footer\">\n");
      out.write("                                <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-primary\">Save changes</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div><!-- /.modal-content -->\n");
      out.write("                    </div><!-- /.modal-dialog -->\n");
      out.write("                </div><!-- /.modal -->\n");
      out.write("            </form>\n");
      out.write("            <hr>\n");
      out.write("            <br>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("\n");
      out.write("         BootstrapDialog.show({\n");
      out.write("            title: 'Default Title',\n");
      out.write("            message: 'Click buttons below.',\n");
      out.write("            buttons: [{\n");
      out.write("                label: 'Title 1',\n");
      out.write("                action: function(dialog) {\n");
      out.write("                    dialog.setTitle('Title 1');\n");
      out.write("                }\n");
      out.write("            }, {\n");
      out.write("                label: 'Title 2',\n");
      out.write("                action: function(dialog) {\n");
      out.write("                    dialog.setTitle('Title 2');\n");
      out.write("                }\n");
      out.write("            }]\n");
      out.write("        });\n");
      out.write("\n");
      out.write("    </script>\n");
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
