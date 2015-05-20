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

        <!-- File Uploader Core CSS -->
        <link href="css/fileinput/fileinput.min.css" rel="stylesheet" type="text/css"/>

        <!-- datetimepicker Core CSS -->
        <link href="css/datetimepicker/datepicker.css" rel="stylesheet" type="text/css"/>

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
                                <a class="active" href="FechasComite.jsp"><i class="fa fa-calendar fa-fw"></i> Fechas de comitez</a>
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
                                <a href="#"><i class="fa fa-edit fa-fw"></i> Citación Aprendiz Comite</a>
                            </li>
                            <li>
                                <a href="Citacion.jsp"><i class="fa fa-table fa-fw"></i> Comite De Evaluación</a>
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
                        <h3 class="page-header">Fechas para comite</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <form id="eventForm" method="post" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Event</label>
                        <div class="col-xs-5">
                            <input type="text" class="form-control" name="name" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-3 control-label">Start date</label>
                        <div class="col-xs-5 dateContainer">
                            <div class="input-group input-append date" id="startDatePicker">
                                <input type="text" class="form-control" name="startDate" />
                                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-3 control-label">End date</label>
                        <div class="col-xs-5 dateContainer">
                            <div class="input-group input-append date" id="endDatePicker">
                                <input type="text" class="form-control" name="endDate" />
                                <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-5 col-xs-offset-3">
                            <button type="submit" class="btn btn-default">Validate</button>
                        </div>
                    </div>
                </form>

            </div>

            <style type="text/css">
                /**
                 * Override feedback icon position
                 * See http://formvalidation.io/examples/adjusting-feedback-icon-position/
                 */
                #eventForm .dateContainer .form-control-feedback {
                    top: 0;
                    right: -15px;
                }
            </style>



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

        <!-- datetimepicker JavaScript -->
        <script src="css/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>

        <script>
            $(document).ready(function () {
                $('#startDatePicker').datepicker({
                    format: 'mm/dd/yyyy'
                }).on('changeDate', function (e) {
                    // Revalidate the start date field
                    $('#eventForm').formValidation('revalidateField', 'startDate');
                });

                $('#endDatePicker').datepicker({
                    format: 'mm/dd/yyyy'
                }).on('changeDate', function (e) {
                    $('#eventForm').formValidation('revalidateField', 'endDate');
                });

                $('#eventForm').formValidation({
                    framework: 'bootstrap',
                    icon: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        name: {
                            validators: {
                                notEmpty: {
                                    message: 'The name is required'
                                }
                            }
                        },
                        startDate: {
                            validators: {
                                notEmpty: {
                                    message: 'The start date is required'
                                },
                                date: {
                                    format: 'MM/DD/YYYY',
                                    max: 'endDate',
                                    message: 'The start date is not a valid'
                                }
                            }
                        },
                        endDate: {
                            validators: {
                                notEmpty: {
                                    message: 'The end date is required'
                                },
                                date: {
                                    format: 'MM/DD/YYYY',
                                    min: 'startDate',
                                    message: 'The end date is not a valid'
                                }
                            }
                        }
                    }
                })
                        .on('success.field.fv', function (e, data) {
                            if (data.field === 'startDate' && !data.fv.isValidField('endDate')) {
                                // We need to revalidate the end date
                                data.fv.revalidateField('endDate');
                            }

                            if (data.field === 'endDate' && !data.fv.isValidField('startDate')) {
                                // We need to revalidate the start date
                                data.fv.revalidateField('startDate');
                            }
                        });
            });
        </script>

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