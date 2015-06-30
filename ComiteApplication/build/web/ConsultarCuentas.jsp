<%-- 
    Document   : Menu
    Created on : 8/05/2015, 10:46:08 AM
    Author     : gestion
--%>

<%@page import="Controlador.ConCuentas"%>
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
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="FechasComite.jsp"><i class="fa fa-calendar fa-fw"></i> Fecha de Comité</a>
                        </li>
                        <li>
                            <a href="Programas.jsp"><i class="fa fa-mortar-board fa-fw"></i> Programas de formación</a>
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
                                    <a class="active" href="ConsultarCuentas.jsp">Consultar Cuenta</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Cuentas de Usuarios</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <div class="tab-content">
                    <div class="tab-pane active" id="area">
                        <table id="tblCuenta" class="table table-hover" cellspacing="0">
                            <thead>
                                <tr>
                                    <th class="text-center" Style="display:none"></th>
                                    <th class="text-center">Nombres</th> 
                                    <th class="text-center">Apellidos</th>
                                    <th class="text-center">Identificacion</th>
                                    <th class="text-center">Tel o Cel</th>
                                    <th class="text-center">Editar</th>
                                    <th class="text-center">Estado</th>

                                </tr>
                            </thead>
                            <tbody id="Estado">
                                <%
                                    ConCuentas list_Cuenta = new ConCuentas();
                                    out.println(list_Cuenta.listar());
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>


                <!--Modal de cuentas de usuario -->                             
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="myModalLabel">Modificar información de la cuenta</h4>
                            </div>
                            <form id="defaultForm" action="ConCuentas" method="POST">
                                <div class="panel panel-default">
                                    <div class="panel-body">

                                        <div class="alert alert-success" style="display: none;"></div>

                                        <div class="form-group col-lg-12">
                                            <input class="form-control" id="Id_Cuenta" name="Id_Cuenta" type="hidden">
                                            <input class="form-control" id="Nombre" placeholder="Nombre" name="Nombre" type="text" disabled>
                                        </div>

                                        <div class="form-group col-lg-6">
                                            <input class="form-control" id="Correo" placeholder="Correo" name="Correo" type="email" value="">
                                        </div>

                                        <div class="form-group col-lg-6">
                                            <input class="form-control" id="Telefono" placeholder="Tel o Cel"  name="Telefono" type="text" value="">
                                        </div>

                                        <div class="form-group col-lg-6">
                                            <input class="form-control" placeholder="Contraseña" name="Contrasena" type="password" value="">
                                        </div>

                                        <div class="form-group col-lg-6">
                                            <input class="form-control" placeholder="Confirmar Contraseña" name="confirm_Contraseña" type="password" value="">
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <button type="reset" class="btn btn-default btn-block" data-dismiss="modal">Cancelar</button>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <button class="btn btn-success btn-block" type="submit" id="btnGuardar" name="evento" value="Modificar">Guardar</button>
                                                </div>
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


        <script>
            $(document).ready(function () {
                $('#tblCuenta').dataTable({
                    "oLanguage": {
                        "sUrl": "bootstrap/js/Spanish.json"
                    }
                });
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
                    url: "ConCuentas",
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

            function Estado_habilitado(id_cuenta) {
                $.ajax({
                    dataType: "html",
                    data: {
                        idcuenta_mod: id_cuenta,
                        estado_mod: "Inhabilitado"
                    },
                    type: "POST",
                    url: "ConCuentas",
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

            function Estado_inhabilitado(id_cuenta) {
                $.ajax({
                    dataType: "html",
                    data: {
                        idcuenta_mod: id_cuenta,
                        estado_mod: "Habilitado"
                    },
                    type: "POST",
                    url: "ConCuentas",
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

    </body>

</html>