<%-- 
    Document   : Quejas
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

        <!-- Select2 Core CSS -->
        <link href="css/select/select2.css" rel="stylesheet" type="text/css"/>
        <link href="css/select/select2-bootstrap.css" rel="stylesheet" type="text/css"/>

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
                                <a  class="active" href="#"><i class="fa fa-files-o fa-fw"></i>Recepción de quejas<span class="fa arrow"></span></a>
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
                                <a href="#"><i class="fa fa-edit fa-fw"></i> Citación Aprendiz Comite</a>
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

            <div class="container" id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">Recepción de quejas</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <center>  
                    <form id="defaultForm">
                        <div class="panel panel-default" style="width: 77%; margin-top: 48px;">
                            <div class="panel-body">

                                <div class="panel-group" id="steps">
                                    <!-- Step 1 -->
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Información del aprendiz</a></h4>
                                        </div>
                                        <div id="stepOne" class="panel-collapse collapse in">
                                            <div class="panel-body">

                                                <div class="form-group col-lg-6">
                                                    <input class="form-control" placeholder="Nombre" name="Nombre" type="text">
                                                </div>

                                                <div class="form-group col-lg-6">
                                                    <input class="form-control" placeholder="Apellido" name="Apellido" type="text" value="">
                                                </div>

                                                <div class="form-group col-lg-6">
                                                    <input class="form-control" placeholder="Identificación" name="Identificación" type="text" value="">
                                                </div>

                                                <div class="form-group col-lg-6">
                                                    <input class="form-control" placeholder="N° De Ficha" name="Ficha" type="text" value="">
                                                </div>

                                                <div class="form-group">
                                                    <div class="col-lg-12">

                                                        <div class="input-group select2-bootstrap-prepend">

                                                            <span class="input-group-btn">
                                                                <button class="btn btn-default" type="button" data-select2-open="single-prepend-text">
                                                                    <span class="glyphicon glyphicon-search"></span>
                                                                </button>
                                                            </span>

                                                            <select id="select2" class="form-control" name="Especialidad">
                                                                <option value="">Especialidad</option>
                                                                <option value="fr">1</option>
                                                                <option value="de">2</option>
                                                                <option value="it">3</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Step 2 -->
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepTwo">Detalle de la queja</a></h4>
                                        </div>
                                        <div id="stepTwo" class="panel-collapse collapse">
                                            <div class="panel-body">

                                                <div class="form-group">
                                                    <div class="col-lg-12">
                                                        <select class="form-control" name="TipoQueja">
                                                            <option value="">Tipo de queja</option>
                                                            <option value="fr">1</option>
                                                            <option value="de">2</option>
                                                            <option value="it">3</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <br>
                                                <br>

                                                <div class="form-group">
                                                    <div class="col-lg-12">
                                                        <textarea class="form-control" name="Descrición" rows="5" placeholder="Descrición de tallada de los hechos que presuntamente constituyen la falta"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Step 3 -->
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepThree">Evidencia</a></h4>
                                        </div>
                                        <div id="stepThree" class="panel-collapse collapse">
                                            <div class="panel-body">

                                                <div class="form-group">
                                                    <div class="col-lg-12">
                                                        <input type="file" class="form-control" name="fourthFile" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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

        <!-- Select2 JavaScript -->
        <script src="css/select/select2.min.js" type="text/javascript"></script>

        <script>
            $(document).ready(function () {
                $("#select2").select2();
            });</script>


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
                        Ficha: {
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
                        Especialidad: {
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
                        Descrición: {
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

    </body>

</html>