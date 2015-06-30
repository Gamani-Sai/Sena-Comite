<%-- 
    Document   : Menu
    Created on : 8/05/2015, 10:46:08 AM
    Author     : gestion
--%>

<%@page import="Controlador.ConProgramas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <!-- DateTable Core CSS --> 
        <link href="bootstrap/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css"/>

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
                                <a class="active" href="Programas.jsp"><i class="fa fa-mortar-board fa-fw"></i> Programas de formación</a>
                            </li>
                            <li>
                                <a   href="#"><i class="fa fa-files-o fa-fw"></i>Recepción de quejas<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="Quejas.jsp">Registar queja</a>
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
                                <a href="#"><i class="fa fa-table fa-fw"></i> Comite De Evaluación</a>
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

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Programas de formación</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <center>  
                    <form id="defaultForm" action="ConProgramas" method="POST">
                        <div class="panel panel-default" style="width: 44%; margin-top: 50px; margin-left:-100px;">


                            <div class="panel-heading">
                                <h4 class="panel-title">Agregar un nuevo programa de formación</h4>
                            </div>


                            <div class="panel-body">
                                <div class="alert alert-success" style="display: none;"></div>

                                <div class="form-group col-lg-10">
                                    <select name="opciones" class="form-control">
                                        <option value="Tecnologo">Tecnólogo</option>
                                        <option value="Tecnico">Técnico</option>
                                    </select>                                
                                </div>

                                <div class="col-md-1">
                                    <div class="form-group">
                                        <button type="button" class="btn btn-info  fa fa-list" data-toggle="modal" data-target=".bs-example-modal-lg"></button>
                                    </div>
                                </div>

                                <div class="form-group col-lg-10">
                                    <input class="form-control" placeholder="Nombre" name="Nombre" type="text">
                                </div>
                            </div>

                            <div class="panel-footer">
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <input class="btn btn-default btn-block" type="reset" id="btnGuardar" name="evento" value="Cancelar">

                                        </div>
                                    </div>

                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <input class="btn btn-success btn-block" type="submit" id="btnGuardar" name="evento" value="Guardar">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </center>

                <!--Modal de programas --> 
                <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="myModalLabel">Modificar información de los programas</h4>
                            </div>
                            <form id="defaultForm" action="" method="POST">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="area">

                                                <input class="form-control" id="ID_PROGRAMATEC" name="ID_PROGRAMATEC" type="hidden">

                                                <table id="tblCuenta" class="table table-hover" cellspacing="0">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center" Style="display:none"></th>
                                                            <th class="text-center">Nombre de programa</th> 
                                                            <th class="text-center">Estado</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="Estado">
                                                        <%
                                                            ConProgramas list_Programas = new ConProgramas();
                                                            out.println(list_Programas.listar());
                                                        %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /page-wrapper -->
        </div>
        <!-- /#wrapper -->

        <footer>
            <p>Posted by: Hege Refsnes</p>
            <p>Contact information: <a href="mailto:someone@example.com">
                    someone@example.com</a>.</p>
        </footer>


        <!-- jQuery -->
        <script src="js/jquery.min.js" type="text/javascript"></script>

        <!-- Mapear Datos -->
        <script src="js/MapeoDatos.js" type="text/javascript"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- DateTable  JavaScript -->
        <script src="bootstrap/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/dataTables.bootstrap.js" type="text/javascript"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="css/metisMenu/metisMenu.min.js" type="text/javascript"></script>

        <!-- Morris Charts JavaScript -->
        <script src="js/raphael-min.js" type="text/javascript"></script>
        <script src="js/morris.min.js" type="text/javascript"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/sb-admin-2.js" type="text/javascript"></script>

        <!-- Jquery Validate JavaScript -->
        <script src="js/formValidation.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>

        <!-- Notificación JavaScript -->
        <script src="css/Notify/run_prettify.js" type="text/javascript"></script>
        <script src="css/Notify/bootstrap-dialog.min.js" type="text/javascript"></script>

        <%
            String alerte = (String) request.getAttribute("alert");
            if (alerte != null) {
                out.print(alerte);
            }
        %>

        <!-- Script Validación -->
        <script type="text/javascript">
            $(document).ready(function () {
                $('#defaultForm')
                        .formValidation({
                            message: 'Este valor no es valido',
                            //live: 'submitted',
                            err: {
                                container: 'tooltip'
                            },
                            icon: {
                                valid: 'glyphicon glyphicon-ok',
                                invalid: 'glyphicon glyphicon-remove',
                                validating: 'glyphicon glyphicon-refresh'
                            },
                            fields: {
                                Telefono: {
                                    message: 'Identificación no valida',
                                    validators: {
                                        notEmpty: {
                                            message: 'Identificación requerida'
                                        },
                                        digits: {
                                            message: 'Solo numeros'
                                        },
                                        stringLength: {
                                            min: 7,
                                            max: 10,
                                            message: 'Minimo 6 y Maximo 11 caracteres'
                                        }
                                    }
                                },
                                Contrasena: {
                                    validators: {
                                        notEmpty: {
                                            message: 'Contraseña requerida'
                                        }
                                    }
                                },
                                confirm_Contraseña: {
                                    validators: {
                                        notEmpty: {
                                            message: 'Repita la Contraseña'
                                        },
                                        identical: {
                                            field: 'Contrasena',
                                            message: 'Las Contraseñas no coinciden'
                                        }
                                    }
                                },
                                Correo: {
                                    validators: {
                                        notEmpty: {
                                            message: 'The email address is required and can\'t be empty'
                                        },
                                        emailAddress: {
                                            message: 'The input is not a valid email address'
                                        }
                                    }
                                }

                            }
                        })

            });
        </script>


        <script type="text/javascript" charset="utf-8">
            function cargar() {
                $.ajax({
                    dataType: "html",
                    data: {
                        recargar: "recargue"

                    },
                    type: "POST",
                    url: "ConProgramas",
                    statusCode: {
                        404: function () {
                            alert("page not found");
                        }
                    }
                }).done(function (datos) {
                    $("#Estado").empty();
                    $("#Estado").append(datos);
                });
            }

            function Estado_habilitado(ID_PROGRAMATEC) {
                $.ajax({
                    dataType: "html",
                    data: {
                        idprogramas_mod: ID_PROGRAMATEC,
                        estado_mod: "Inhabilitado"
                    },
                    type: "POST",
                    url: "ConProgramas",
                    statusCode: {
                        404: function () {
                            alert("page not found");
                        }
                    }
                }).done(function (datos) {
                    $("#cambio_est").empty();
                    $("#cambio_est").append(datos);
                    cargar();
                });

            }
            function Estado_inhabilitado(ID_PROGRAMATEC) {
                $.ajax({
                    dataType: "html",
                    data: {
                        idprogramas_mod: ID_PROGRAMATEC,
                        estado_mod: "Habilitado"
                    },
                    type: "POST",
                    url: "ConProgramas",
                    statusCode: {
                        404: function () {
                            alert("page not found");
                        }
                    }
                }).done(function (datos) {
                    $("#cambio_est").empty();
                    $("#cambio_est").append(datos);
                    cargar();
                });
            }
        </script>

        <script>
            $(document).ready(function () {
                $('#tblCuenta').dataTable({
                    "oLanguage": {
                        "sUrl": "bootstrap/js/Spanish.json"
                    }
                });
            });
        </script>

    </body>

</html>