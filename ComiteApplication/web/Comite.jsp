<%-- 
    Document   : Quejas
    Created on : 8/05/2015, 10:46:08 AM
    Author     : gestion
--%>

<%@page import="Controlador.ConComite"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Controlador.ConQueja"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    java.util.Date Fecha = new java.util.Date();
    SimpleDateFormat Formato = new SimpleDateFormat("MM/dd/yyyy");
%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Comite</title>

        <!-- Bootstrap Core CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- Jquery Validate Core CSS -->
        <link href="css/formValidation.css" rel="stylesheet" type="text/css"/>

        <!-- MetisMenu CSS -->
        <link href="css/metisMenu/metisMenu.min.css" rel="stylesheet" type="text/css"/>

        <!-- Timeline CSS -->
        <link href="css/timeline.css" rel="stylesheet" type="text/css"/>

        <!-- Custom CSS -->
        <link href="css/sb-admin-2.css" rel="stylesheet" type="text/css"/>

        <!-- Morris Charts CSS -->
        <link href="css/morris.css" rel="stylesheet" type="text/css"/>

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- Select2 Core CSS -->
        <link href="css/select/select2.css" rel="stylesheet" type="text/css"/>
        <link href="css/select/select2-bootstrap.css" rel="stylesheet" type="text/css"/>

        <!-- File Uploader Core CSS -->
        <link href="css/fileinput/fileinput.min.css" rel="stylesheet" type="text/css"/>

        <!-- Custom Fonts -->
        <link href="css/Notify/prettify.css" rel="stylesheet" type="text/css"/>
        <link href="css/Notify/bootstrap-dialog.min.css" rel="stylesheet" type="text/css"/>



    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Comite</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="Menu.jsp" class="navbar-brand">COMITE</a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                            <span class="btn-block"><i class="fa fa-bell fa-fw"></i> <%ConQueja listQueja = new ConQueja();
                                out.println(listQueja.anomaliacont());%> <i class="fa fa-caret-down"></i> </span>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <table id="tblArea" class="table2 table-hover" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th  class="text-center">Nuevas quejas</th>
                                            <th class="text-center">Ir</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <input class="form-control" id="Id_QuejaDelete"  name="Id_QuejaDelete" type="hidden">
                                    <%

                                        out.println(listQueja.listaranom());
                                    %>
                                    </tbody>
                                </table>
                            </li>
                        </ul>
                        <!-- /.dropdown-alerts -->
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-user"></i> Jean Mazo <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">

                            <li>
                                <a href="index.jsp"><i class="fa fa-sign-out fa-fw"></i> Cerrar sesión</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="FechasComite.jsp"><i class="fa fa-calendar fa-fw"></i> Fecha de Comité</a>
                            </li>
                            <li>
                                <a href="Programas.jsp"><i class="fa fa-mortar-board fa-fw"></i> Programas de formación</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o fa-fw"></i>Recepción de quejas<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a class="active" href="Quejas.jsp">Registar queja</a>
                                    </li>
                                    <li>
                                        <a href="ConsultarQueja.jsp">Consultar quejas</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>

                            <li>
                                <a href="Citacion.jsp"><i class="fa fa-edit fa-fw"></i> Citación Aprendiz Comite</a>
                            </li>
                            <li>
                                <a  class="active" href="Comite.jsp"><i class="fa fa-table fa-fw"></i> Comite De Evaluación</a>
                            </li>

                            <li>
                                <a href="#"><i class="fa fa-users fa-fw"></i> Cuentas de Usuarios<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="Cuentas.jsp">Registar Cuenta</a>
                                    </li>
                                    <li>
                                        <a href="ConsultarCuentas.jsp">Consultar Cuenta</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <div class="container" id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Comité de evaluación</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <center>
                    <%
                        ConComite listComite = new ConComite();
                        out.print(listComite.listar());
                    %>
                </center>
                <!-- /page-wrapper -->
            </div>
            <!-- /#wrapper -->

            <footer>
                <p>Posted by: Hege Refsnes</p>
                <p>Contact information: <a href="mailto:someone@example.com">someone@example.com</a></p>
            </footer>


            <!-- jQuery -->
            <script src="js/jquery.min.js" type="text/javascript"></script>

            <script src="js/MapeoDatos.js" type="text/javascript"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

            <!-- Jquery Validate JavaScript -->
            <script src="js/formValidation.js" type="text/javascript"></script>
            <script src="js/bootstrap.js" type="text/javascript"></script>

            <!-- Metis Menu Plugin JavaScript -->
            <script src="css/metisMenu/metisMenu.min.js" type="text/javascript"></script>

            <!-- Morris Charts JavaScript -->
            <script src="js/raphael-min.js" type="text/javascript"></script>
            <script src="js/morris.min.js" type="text/javascript"></script>

            <!-- Custom Theme JavaScript -->
            <script src="js/sb-admin-2.js" type="text/javascript"></script>

            <!-- Notificación JavaScript -->
            <script src="css/Notify/run_prettify.js" type="text/javascript"></script>
            <script src="css/Notify/bootstrap-dialog.min.js" type="text/javascript"></script>

            <%
                String alerte = (String) request.getAttribute("alert");
                if (alerte != null) {
                    out.print(alerte);
                }
            %>

            <!-- FileUploader JavaScript -->
            <script src="css/fileinput/fileinput.min.js" type="text/javascript"></script>
            <script src="css/fileinput/fileinput_locale_es.js" type="text/javascript"></script>

            <script>
                $('#file-es').fileinput({
                    language: 'es',
                    uploadUrl: '#',
                    allowedFileExtensions: ['jpg', 'png', 'gif'],
                });
            </script>

            <!-- Select2 JavaScript -->
            <script src="css/select/select2.min.js" type="text/javascript"></script>

            <!-- Script Validación -->
            <script type="text/javascript">
                $(document).ready(function () {
                    $('#defaultForm').formValidation({
                        message: 'This value is not valid',
                        excluded: ':disabled',
                        err: {
                            container: 'tooltip'
                        },
                        icon: {
                            valid: 'glyphicon glyphicon-ok',
                            invalid: 'glyphicon glyphicon-remove',
                            validating: 'glyphicon glyphicon-refresh'
                        },
                        fields: {
                            Nombre: {
                                validators: {
                                    stringLength: {
                                        enabled: false,
                                        min: 4,
                                        message: 'The first name must be more than 5 characters'
                                    },
                                    notEmpty: {
                                        message: 'The first name is required'
                                    },
                                    regexp: {
                                        enabled: true,
                                        regexp: /^[a-z]+$/i,
                                        message: 'The first name must consist of a-z, A-Z characters only'
                                    }
                                }
                            },
                            Apellido: {
                                validators: {
                                    stringLength: {
                                        enabled: false,
                                        min: 4,
                                        message: 'The first name must be more than 5 characters'
                                    },
                                    notEmpty: {
                                        message: 'The first name is required'
                                    },
                                    regexp: {
                                        enabled: true,
                                        regexp: /^[a-z]+$/i,
                                        message: 'The first name must consist of a-z, A-Z characters only'
                                    }
                                }
                            },
                            Identificacion: {
                                message: 'Identificación no valida',
                                validators: {
                                    notEmpty: {
                                        message: 'Identificación requerida'
                                    },
                                    digits: {
                                        message: 'Solo numeros'
                                    },
                                    stringLength: {
                                        min: 6,
                                        max: 11,
                                        message: 'Minimo 6 y Maximo 11 caracteres'
                                    }
                                }
                            },
                            N_Ficha: {
                                message: 'Ficha no valida',
                                validators: {
                                    notEmpty: {
                                        message: 'Ficha requerida'
                                    },
                                    digits: {
                                        message: 'Solo numeros'
                                    },
                                    stringLength: {
                                        min: 6,
                                        max: 6,
                                        message: 'Maximo 6'
                                    }
                                }
                            },
                            opciones: {
                                validators: {
                                    notEmpty: {
                                        message: 'The country is required and can\'t be empty'
                                    }
                                }
                            },
                            TipoQueja: {
                                validators: {
                                    notEmpty: {
                                        message: 'The country is required and can\'t be empty'
                                    }
                                }
                            },
                            Descricion: {
                                validators: {
                                    stringLength: {
                                        enabled: false,
                                        min: 4,
                                        message: 'The first name must be more than 5 characters'
                                    },
                                    notEmpty: {
                                        message: 'The first name is required'
                                    },
                                    regexp: {
                                        enabled: true,
                                        regexp: /^[a-z]+$/i,
                                        message: 'The first name must consist of a-z, A-Z characters only'
                                    }
                                }
                            }, fourthFile: {
                                validators: {
                                    file: {
                                        extension: 'png,jpg',
                                        maxSize: 10 * 1024 * 1024,
                                        message: 'Please choose a pdf file with a size Max 10M.'
                                    }
                                }
                            }
                        }
                    }).on('err.form.fv', function (e) {
                        console.log('error');
                        // Active the panel element containing the first invalid element
                        var $form = $(e.target),
                                validator = $form.data('formValidation'),
                                $invalidField = validator.getInvalidFields().eq(0),
                                $collapse = $invalidField.parents('.collapse');
                        $collapse.collapse('show');
                    });
                });
            </script>

            <script>
                $(function () {
                    recibir();

                });

                function recibir() {
                    var valor = $("select[name='opciones']").val();
                    //alert(valor);
                    $.ajax({
                        dataType: "html",
                        data: {
                            opciones: valor
                        },
                        type: "POST",
                        url: "ajaxProgramas",
                        statusCode: {
                            404: function () {
                                alert("page not found");
                            }
                        }
                    }).done(function (datos) {

                        $("#traer").empty();
                        $("#traer").append(datos);

                        $("#select2").select2({
                            minimumInputLength: 2
                        });

                    });
                }

                function estado_cam(paramtro, ID_QUEJA) {
                    $.ajax({
                        dataType: "html",
                        data: {
                            evento: "Anomalia",
                            estado: paramtro,
                            id: ID_QUEJA

                        },
                        type: "POST",
                        url: "ConQueja",
                        statusCode: {
                            404: function () {
                                alert("page not found");
                            }
                        }
                    }).done(function (datos) {

                        $("#traer").empty();
                        $("#traer").append(datos);
                    });
                }


            </script>         

    </body>

</html>