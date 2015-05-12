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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Submit Handler Demo</title>\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/formValidation.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <script src=\"js/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/formValidation.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/bootstrap.js\" type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <!-- form: -->\n");
      out.write("                <section>\n");
      out.write("                    <div class=\"col-lg-8 col-lg-offset-2\">\n");
      out.write("                        <div class=\"page-header\">\n");
      out.write("                            <h2>Custom submit handler</h2>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <form id=\"defaultForm\" method=\"post\" class=\"form-horizontal\" action=\"\">\n");
      out.write("                            <div class=\"alert alert-success\" style=\"display: none;\"></div>\n");
      out.write("\n");
      out.write("                            <div class=\"panel panel-default\">\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group col-lg-6\">\n");
      out.write("                                        <input class=\"form-control\" placeholder=\"Nombre\" name=\"username\" type=\"text\">\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group col-lg-6\">\n");
      out.write("                                        <input class=\"form-control\" placeholder=\"Apellido\" name=\"Apellido\" type=\"text\" value=\"\">\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group col-lg-12\">\n");
      out.write("                                        <input class=\"form-control\" placeholder=\"Identificación\" name=\"phone\" type=\"text\" value=\"\">\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group col-lg-6\">\n");
      out.write("                                        <input class=\"form-control\" placeholder=\"Contraseña\" name=\"password\" type=\"password\" value=\"\">\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group col-lg-6\">\n");
      out.write("                                        <input class=\"form-control\" placeholder=\"Confirmar Contraseña\" name=\"\" type=\"password\" value=\"\">\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label class=\"col-lg-3 control-label\">Password</label>\n");
      out.write("                                        <div class=\"col-lg-5\">\n");
      out.write("                                            <input type=\"password\" class=\"form-control\" name=\"password\"\n");
      out.write("                                                   required data-fv-notempty-message=\"The password is required and cannot be empty\"\n");
      out.write("                                                   data-fv-different=\"true\" data-fv-different-field=\"username\" data-fv-different-message=\"The password cannot be the same as username\" />\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label class=\"col-lg-3 control-label\">Retype password</label>\n");
      out.write("                                        <div class=\"col-lg-5\">\n");
      out.write("                                            <input type=\"password\" class=\"form-control\" name=\"confirmPassword\"\n");
      out.write("                                                   required data-fv-notempty-message=\"The confirm password is required and cannot be empty\"\n");
      out.write("                                                   data-fv-identical=\"true\" data-fv-identical-field=\"password\" data-fv-identical-message=\"The password and its confirm are not the same\" />\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"panel-footer\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("\n");
      out.write("                                        <div class=\"col-md-6\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input class=\"btn btn-default btn-block\" type=\"reset\" id=\"btnGuardar\" name=\"action\" value=\"Cancelar\">\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"col-md-6\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input class=\"btn btn-success btn-block\" type=\"submit\" id=\"btnGuardar\" name=\"action\" value=\"Guardar\">\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </section>\n");
      out.write("                <!-- :form -->\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#defaultForm')\n");
      out.write("                        .formValidation({\n");
      out.write("                            message: 'This value is not valid',\n");
      out.write("                            //live: 'submitted',\n");
      out.write("                            icon: {\n");
      out.write("                                valid: 'glyphicon glyphicon-ok',\n");
      out.write("                                invalid: 'glyphicon glyphicon-remove',\n");
      out.write("                                validating: 'glyphicon glyphicon-refresh'\n");
      out.write("                            },\n");
      out.write("                            fields: {\n");
      out.write("                                username: {\n");
      out.write("                                    message: 'The username is not valid',\n");
      out.write("                                    validators: {\n");
      out.write("                                        notEmpty: {\n");
      out.write("                                            message: 'The username is required and can\\'t be empty'\n");
      out.write("                                        },\n");
      out.write("                                        stringLength: {\n");
      out.write("                                            min: 6,\n");
      out.write("                                            max: 30,\n");
      out.write("                                            message: 'The username must be more than 6 and less than 30 characters long'\n");
      out.write("                                        },\n");
      out.write("                                        /*remote: {\n");
      out.write("                                         url: 'remote.php',\n");
      out.write("                                         message: 'The username is not available'\n");
      out.write("                                         },*/\n");
      out.write("                                        regexp: {\n");
      out.write("                                            regexp: /^[a-zA-Z0-9_\\.]+$/,\n");
      out.write("                                            message: 'The username can only consist of alphabetical, number, dot and underscore'\n");
      out.write("                                        }\n");
      out.write("                                    }\n");
      out.write("                                },\n");
      out.write("                                Apellido: {\n");
      out.write("                                    message: 'The username is not valid',\n");
      out.write("                                    validators: {\n");
      out.write("                                        notEmpty: {\n");
      out.write("                                            message: 'The username is required and can\\'t be empty'\n");
      out.write("                                        },\n");
      out.write("                                        stringLength: {\n");
      out.write("                                            min: 6,\n");
      out.write("                                            max: 30,\n");
      out.write("                                            message: 'The username must be more than 6 and less than 30 characters long'\n");
      out.write("                                        },\n");
      out.write("                                        /*remote: {\n");
      out.write("                                         url: 'remote.php',\n");
      out.write("                                         message: 'The username is not available'\n");
      out.write("                                         },*/\n");
      out.write("                                        regexp: {\n");
      out.write("                                            regexp: /^[a-zA-Z0-9_\\.]+$/,\n");
      out.write("                                            message: 'The username can only consist of alphabetical, number, dot and underscore'\n");
      out.write("                                        }\n");
      out.write("                                    }\n");
      out.write("                                },\n");
      out.write("                                phone: {\n");
      out.write("                                    message: 'The phone number is not valid',\n");
      out.write("                                    validators: {\n");
      out.write("                                        notEmpty: {\n");
      out.write("                                            message: 'The phone number is required'\n");
      out.write("                                        },\n");
      out.write("                                        digits: {\n");
      out.write("                                            message: 'The value can contain only digits'\n");
      out.write("                                        },\n");
      out.write("                                        stringLength: {\n");
      out.write("                                            min: 6,\n");
      out.write("                                            max: 11,\n");
      out.write("                                            message: 'The identificatión must be more than 6 and less than 11 characters long'\n");
      out.write("                                        }\n");
      out.write("                                    }\n");
      out.write("                                },\n");
      out.write("                                email: {\n");
      out.write("                                    validators: {\n");
      out.write("                                        notEmpty: {\n");
      out.write("                                            message: 'The email address is required and can\\'t be empty'\n");
      out.write("                                        },\n");
      out.write("                                        emailAddress: {\n");
      out.write("                                            message: 'The input is not a valid email address'\n");
      out.write("                                        }\n");
      out.write("                                    }\n");
      out.write("                                },\n");
      out.write("                                password: {\n");
      out.write("                                    validators: {\n");
      out.write("                                        notEmpty: {\n");
      out.write("                                            message: 'The password is required and can\\'t be empty'\n");
      out.write("                                        }\n");
      out.write("                                    }\n");
      out.write("                                }\n");
      out.write("                            }\n");
      out.write("                        })\n");
      out.write("                        .on('success.form.fv', function (e) {\n");
      out.write("                            // Prevent submit form\n");
      out.write("                            e.preventDefault();\n");
      out.write("\n");
      out.write("                            var $form = $(e.target),\n");
      out.write("                                    validator = $form.data('formValidation');\n");
      out.write("                            $form.find('.alert').html('Thanks for signing up. Now you can sign in as ' + validator.getFieldElements('username').val()).show();\n");
      out.write("                        });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
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
