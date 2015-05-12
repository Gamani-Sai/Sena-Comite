<%-- 
    Document   : Menu
    Created on : 8/05/2015, 10:46:08 AM
    Author     : gestion
--%>

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
                                <a href="#"><i class="fa fa-files-o fa-fw"></i>Recepción de quejas<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">Registar queja</a>
                                    </li>
                                    <li>
                                        <a href="#">Consultar quejas</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>

                            <li>
                                <a href="#"><i class="fa fa-edit fa-fw"></i> Citación Aprendiz Comite</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-table fa-fw"></i> Comite De Evaluación</a>
                            </li>

                            <li>
                                <a class="active" href="#"><i class="fa fa-users fa-fw"></i> Cuentas de Usuarios<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a class="active" href="Cuentas.jsp">Registar Cuenta</a>
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
                        <h3 class="page-header">Cuentas de Usuarios</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <center>  
                    <form id="defaultForm">
                        <div class="panel panel-default" style="width: 77%; margin-top: 48px;">
                            <div class="panel-body">

                                <div class="alert alert-success" style="display: none;"></div>

                                <div class="form-group col-lg-6">
                                    <input class="form-control" placeholder="Nombre" name="Nombre" type="text">
                                </div>

                                <div class="form-group col-lg-6">
                                    <input class="form-control" placeholder="Apellido" name="Apellido" type="text" value="">
                                </div>

                                <div class="form-group col-lg-12">
                                    <input class="form-control" placeholder="Identificación" name="Identificación" type="text" value="">
                                </div>

                                <div class="form-group col-lg-6">
                                    <input class="form-control" placeholder="Contraseña" name="Contraseña" type="Contraseña" value="">
                                </div>

                                <div class="form-group col-lg-6">
                                    <input class="form-control" placeholder="Confirmar Contraseña" name="confirm_Contraseña" type="password" value="">
                                </div>
                            </div>
                            <div class="panel-footer">
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input class="btn btn-default btn-block" type="reset" id="btnGuardar" name="action" value="Cancelar">

                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input class="btn btn-success btn-block" type="submit" id="btnGuardar" name="action" value="Guardar">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </center>
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
                                    message: 'Apellido no  valido',
                                    validators: {
                                        notEmpty: {
                                            message: 'Apellido requerido'
                                        }
                                    }
                                },
                                Identificación: {
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
                                Contraseña: {
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
                                            field: 'Contraseña',
                                            message: 'La Contraseña no coincide'
                                        }
                                    }
                                },
                                firstName: {
                                    message: 'Nombre no es valido',
                                    validators: {
                                        notEmpty: {
                                            message: 'Nombre requerido'
                                        },
                                        regexp: {
                                            regexp: /^[a-zA-Z0-9_\.]+$/,
                                            message: 'The username can only consist of alphabetical, number, dot and underscore'
                                        }
                                    }
                                },
                                lastName: {
                                    message: 'The username is not valid',
                                    validators: {
                                        notEmpty: {
                                            message: 'The username is required and can\'t be empty'
                                        },
                                        stringLength: {
                                            min: 6,
                                            max: 30,
                                            message: 'The username must be more than 6 and less than 30 characters long'
                                        },
                                        /*remote: {
                                         url: 'remote.php',
                                         message: 'The username is not available'
                                         },*/
                                        regexp: {
                                            regexp: /^[a-zA-Z0-9_\.]+$/,
                                            message: 'The username can only consist of alphabetical, number, dot and underscore'
                                        }
                                    }
                                }
                            }
                        })

            });
        </script>

    </body>

</html>