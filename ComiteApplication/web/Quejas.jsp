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
                                <a href="FechasComite.jsp"><i class="fa fa-calendar fa-fw"></i> Fechas de comitez</a>
                            </li>
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
                        <h3 class="page-header">Recepción de quejas</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <center>  
                    <form id="defaultForm" action="ConQueja" method="POST">
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
                                                    <input class="form-control" placeholder="Identificación" name="Identificacion" type="text" value="">
                                                </div>

                                                <div class="form-group col-lg-6">
                                                    <input class="form-control" placeholder="N° De Ficha" name="N_Ficha" type="text" value="">
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
                                                                <option value="">Programa</option>
                                                                <option value="AUXILIAR INFORMACIÓN TURÍSTICA">AUXILIAR INFORMACIÓN TURÍSTICA</option>
                                                                <option value="CURSO ESPECIAL INFORMATICA: MICROSOFT WORD, EXCEL E INTERNET">CURSO ESPECIAL INFORMATICA: MICROSOFT WORD, EXCEL E INTERNET</option>
                                                                <option value="CURSO ESPECIAL CORTES Y PEINADOS">CURSO ESPECIAL CORTES Y PEINADOS</option>
                                                                <option value="CURSO ESPECIAL COCINA BÁSICA">CURSO ESPECIAL COCINA BÁSICA</option>
                                                                <option value="CURSO ESPECIAL EXCEL INTERMEDIO">CURSO ESPECIAL EXCEL INTERMEDIO</option>
                                                                <option value="CURSO ESPECIAL BÁSICO DE MESA Y BAR">CURSO ESPECIAL BÁSICO DE MESA Y BAR</option>
                                                                <option value="CURSO ESPECIAL CONSERVACION DE ALIMENTOS">CURSO ESPECIAL CONSERVACION DE ALIMENTOS</option>
                                                                <option value="CURSO ESPECIAL FUNDAMENTACION DE ENSAMBLE Y MANTENIMIENTO DE COMPUTADORES PARA LOS PROCESOS DE SOPORTE TECNICO">CURSO ESPECIAL FUNDAMENTACION DE ENSAMBLE Y MANTENIMIENTO DE COMPUTADORES PARA LOS PROCESOS DE SOPORTE TECNICO</option>
                                                                <option value="CURSO ESPECIAL AUTOCAD  2D">CURSO ESPECIAL AUTOCAD 2D</option>
                                                                <option value="CURSO ESPECIAL ADMINISTRACION DE RECURSOS HUMANOS">CURSO ESPECIAL ADMINISTRACION DE RECURSOS HUMANOS</option>
                                                                <option value="CURSO ESPECIAL PANADERIA BÁSICA NIVEL I">CURSO ESPECIAL PANADERIA BÁSICA NIVEL I</option>
                                                                <option value="CURSO ESPECIAL EXCEL BASICO">CURSO ESPECIAL EXCEL BASICO</option>
                                                                <option value="CURSO ESPECIAL SERVICIO AL CLIENTE">CURSO ESPECIAL SERVICIO AL CLIENTE</option>
                                                                <option value="CURSO ESPECIAL COCINA  AUTOCTONA  COLOMBIANA">CURSO ESPECIAL COCINA  AUTOCTONA  COLOMBIANA</option>
                                                                <option value="CURSO ESPECIAL EMPRENDIMIENTO EMPRESARIAL">CURSO ESPECIAL EMPRENDIMIENTO EMPRESARIAL</option>
                                                                <option value="CURSO ESPECIAL ACTUALIZACION PLATAFORMA BLACKBOARD 9.1">CURSO ESPECIAL ACTUALIZACION PLATAFORMA BLACKBOARD 9.1</option>
                                                                <option value="CURSO ESPECIAL EXCEL BÁSICO">CURSO ESPECIAL EXCEL BÁSICO</option>
                                                                <option value="CURSO ESPECIAL EVALUACION DE  IMPACTOS AMBIENTALES EN ACTIVIDADES PRODUCTOS Y SERVICIOS">CURSO ESPECIAL EVALUACION DE  IMPACTOS AMBIENTALES EN ACTIVIDADES PRODUCTOS Y SERVICIOS</option>
                                                                <option value="CURSO ESPECIAL PASTELERÍA">CURSO ESPECIAL PASTELERÍA</option>
                                                                <option value="CURSO ESPECIAL GESTION DE LA  SEGURIDAD INFORMATICA">CURSO ESPECIAL GESTION DE LA  SEGURIDAD INFORMATICA</option>
                                                                <option value="CURSO ESPECIAL ENGLISH DOT WORKS LEVEL 1 - INGLÉS 1">CURSO ESPECIAL ENGLISH DOT WORKS LEVEL 1 - INGLÉS 1</option>
                                                                <option value="CURSO ESPECIAL MANEJO BÁSICO DE HERRAMIENTAS INFORMATICAS">CURSO ESPECIAL MANEJO BÁSICO DE HERRAMIENTAS INFORMATICAS</option>
                                                                <option value="CURSO ESPECIAL FINANZAS Y MERCADEO PARA UN PLAN DE NEGOCIOS">CURSO ESPECIAL FINANZAS Y MERCADEO PARA UN PLAN DE NEGOCIOS</option>
                                                                <option value="CURSO ESPECIAL INFORMÁTICA BÁSICA II">CURSO ESPECIAL INFORMÁTICA BÁSICA II</option>
                                                                <option value="CURSO ESPECIAL AUDITORIA INFORMATICA: CONCEPTUALIZACION">CURSO ESPECIAL AUDITORIA INFORMATICA: CONCEPTUALIZACION</option>
                                                                <option value="CURSO ESPECIAL ESTRUCTURACION DE PROYECTOS FORMATIVOS">CURSO ESPECIAL ESTRUCTURACION DE PROYECTOS FORMATIVOS</option>
                                                                <option value="CURSO ESPECIAL HERRAMIENTAS OFIMATICAS III">CURSO ESPECIAL HERRAMIENTAS OFIMATICAS III</option>
                                                                <option value="CURSO ESPECIAL APLICACION DE HERRAMIENTAS OFIMATICAS CON MICROSOFT EXCEL EN EL ENTORNO LABORAL">CURSO ESPECIAL APLICACION DE HERRAMIENTAS OFIMATICAS CON MICROSOFT EXCEL EN EL ENTORNO LABORAL</option>
                                                                <option value="CURSO ESPECIAL REDES Y MEDIOS DE TRANSMISION">CURSO ESPECIAL REDES Y MEDIOS DE TRANSMISION</option>
                                                                <option value="CURSO ESPECIAL COCINA BÁSICA NIVEL I">CURSO ESPECIAL COCINA BÁSICA NIVEL I</option>
                                                                <option value="CURSO ESPECIAL MANEJO DEFENSIVO DE VEHICULOS AUTOMOTORES">CURSO ESPECIAL MANEJO DEFENSIVO DE VEHICULOS AUTOMOTORES</option>
                                                                <option value="CURSO ESPECIAL WORD  BASICO">CURSO ESPECIAL WORD  BASICO</option>
                                                                <option value="CURSO ESPECIAL TÉCNICAS DE CORTE Y ESCULPIDO DE CABELLO">CURSO ESPECIAL TÉCNICAS DE CORTE Y ESCULPIDO DE CABELLO</option>
                                                                <option value="EVENTO HERRAMIENTAS DE PROTOTIPADO ELECTRÓNICO">EVENTO HERRAMIENTAS DE PROTOTIPADO ELECTRÓNICO</option>
                                                                <option value="OPERARIO OPERACIÓN DE EQUIPOS DE SERVICIO INTERMUNICIPAL DE PASAJEROS">OPERARIO	OPERACIÓN DE EQUIPOS DE SERVICIO INTERMUNICIPAL DE PASAJEROS</option>
                                                                <option value="OPERARIO PROCESOS DE PANADERIA">OPERARIO	PROCESOS DE PANADERIA</option>
                                                                <option value="TÉCNICO RECURSOS HUMANOS">TÉCNICO RECURSOS HUMANOS</option>
                                                                <option value="TÉCNICO PROGRAMACION DE SOFTWARE">TÉCNICO PROGRAMACION DE SOFTWARE</option>
                                                                <option value="TÉCNICO DISEÑO E INTEGRACION DE MULTIMEDIA">TÉCNICO DISEÑO E INTEGRACION DE MULTIMEDIA</option>
                                                                <option value="TÉCNICO ASISTENCIA ADMINISTRATIVA">TÉCNICO ASISTENCIA ADMINISTRATIVA</option>
                                                                <option value="TÉCNICO SISTEMAS">TÉCNICO SISTEMAS</option>
                                                                <option value="TÉCNICO PREPRENSA DIGITAL PARA MEDIOS IMPRESOS">TÉCNICO PREPRENSA DIGITAL PARA MEDIOS IMPRESOS</option>
                                                                <option value="TÉCNICO LOGÍSTICA EMPRESARIAL">TÉCNICO LOGÍSTICA EMPRESARIAL</option>
                                                                <option value="TÉCNICO TRÁNSITO Y SEGURIDAD VIAL">TÉCNICO TRÁNSITO Y SEGURIDAD VIAL</option>
                                                                <option value="TÉCNICO PELUQUERIA">TÉCNICO PELUQUERIA</option>
                                                                <option value="TÉCNICO TRABAJO COMUNITARIO Y APOYO SOCIAL">TÉCNICO TRABAJO COMUNITARIO Y APOYO SOCIAL</option>
                                                                <option value="TÉCNICO MESA Y BAR">TÉCNICO MESA Y BAR</option>
                                                                <option value="TÉCNICO DESARROLLO DE OPERACIONES LOGÍSTICA EN LA CADENA DE ABASTECIMIENTO">TÉCNICO DESARROLLO DE OPERACIONES LOGÍSTICA EN LA CADENA DE ABASTECIMIENTO</option>
                                                                <option value="TÉCNICO ANIMACION TURISTICA">TÉCNICO ANIMACION TURISTICA</option>
                                                                <option value="TÉCNICO OPERACIÓN DE EVENTOS">TÉCNICO OPERACIÓN DE EVENTOS</option>
                                                                <option value="TÉCNICO PANIFICACION">TÉCNICO PANIFICACION</option>
                                                                <option value="TÉCNICO INSTALACION DE REDES DE COMPUTADORES">TÉCNICO INSTALACION DE REDES DE COMPUTADORES</option>
                                                                <option value="TÉCNICO DISTRIBUCION DE PRODUCTOS EN VEHICULOS INDUSTRIALES">TÉCNICO DISTRIBUCION DE PRODUCTOS EN VEHICULOS INDUSTRIALES</option>
                                                                <option value="TECNÓLOGO GESTIÓN HOTELERA">TECNÓLOGO GESTIÓN HOTELERA</option>
                                                                <option value="TECNÓLOGO GESTIÓN DE NEGOCIOS">TECNÓLOGO GESTIÓN DE NEGOCIOS</option>
                                                                <option value="TECNÓLOGO FORMULACIÓN DE PROYECTOS">TECNÓLOGO FORMULACIÓN DE PROYECTOS</option>
                                                                <option value="TECNÓLOGO NEGOCIACIÓN INTERNACIONAL">TECNÓLOGO NEGOCIACIÓN INTERNACIONAL</option>
                                                                <option value="TECNÓLOGO LOGÍSTICA DEL TRANSPORTE">TECNÓLOGO LOGÍSTICA DEL TRANSPORTE</option>
                                                                <option value="TECNÓLOGO GESTIÓN DE LA PROPIEDAD HORIZONTAL">TECNÓLOGO GESTIÓN DE LA PROPIEDAD HORIZONTAL</option>
                                                                <option value="TECNÓLOGO MANTENIMIENTO DE EQUIPOS DE COMPUTO, DISEÑO E INSTALACION DE CABLEADO ESTRUCTURADO">TECNÓLOGO MANTENIMIENTO DE EQUIPOS DE COMPUTO, DISEÑO E INSTALACION DE CABLEADO ESTRUCTURADO</option>
                                                                <option value="TECNÓLOGO DISEÑO PARA LA COMUNICACIÓN GRÁFICA">TECNÓLOGO DISEÑO PARA LA COMUNICACIÓN GRÁFICA</option>
                                                                <option value="TECNÓLOGO GESTION DE REDES DE DATOS">TECNÓLOGO GESTION DE REDES DE DATOS</option>
                                                                <option value="TECNÓLOGO ORGANIZACIÓN DE EVENTOS">TECNÓLOGO ORGANIZACIÓN DE EVENTOS</option>
                                                                <option value="TECNÓLOGO PRODUCCIÓN DE CAMPO PARA CINE Y TELEVISIÓN">TECNÓLOGO PRODUCCIÓN DE CAMPO PARA CINE Y TELEVISIÓN</option>
                                                                <option value="TECNÓLOGO GESTIÓN DEL TALENTO HUMANO">TECNÓLOGO GESTIÓN DEL TALENTO HUMANO</option>
                                                                <option value="TECNÓLOGO ANALISIS Y DESARROLLO DE SISTEMAS DE INFORMACION">TECNÓLOGO ANALISIS Y DESARROLLO DE SISTEMAS DE INFORMACION</option>
                                                                <option value="TECNÓLOGO ANIMACION DIGITAL">TECNÓLOGO ANIMACION DIGITAL</option>
                                                                <option value="TECNÓLOGO PRODUCCION DE MULTIMEDIA">TECNÓLOGO PRODUCCION DE MULTIMEDIA</option>
                                                                <option value="TECNÓLOGO PRODUCCION DE MEDIOS AUDIOVISUALES DIGITALES">TECNÓLOGO PRODUCCION DE MEDIOS AUDIOVISUALES DIGITALES</option>
                                                                <option value="TECNÓLOGO ANIMACION 3D">TECNÓLOGO ANIMACION 3D</option>
                                                                <option value="TECNÓLOGO DESARROLLO DE VIDEOJUEGOS">TECNÓLOGO DESARROLLO DE VIDEOJUEGOS</option>
                                                                <option value="TECNÓLOGO GRABACIÓN, EDICIÓN Y MEZCLA DE VOCES Y DOBLAJES PARA MEDIOS AUDIOVISUALES">TECNÓLOGO GRABACIÓN, EDICIÓN Y MEZCLA DE VOCES Y DOBLAJES PARA MEDIOS AUDIOVISUALES</option>
                                                                <option value="TECNÓLOGO CÁMARA Y FOTOGRAFÍA PARA CINE">TECNÓLOGO CÁMARA Y FOTOGRAFÍA PARA CINE</option>
                                                                <option value="TECNÓLOGO ILUMINACIÓN, SOPORTE Y ELECTRICIDAD PARA CINE Y TELEVISIÓN">TECNÓLOGO ILUMINACIÓN, SOPORTE Y ELECTRICIDAD PARA CINE Y TELEVISIÓN</option>
                                                                <option value="TECNÓLOGO COORDINACIÓN DEL PROCESO PARA DISEÑO DE MEDIOS IMPRESOS">TECNÓLOGO COORDINACIÓN DEL PROCESO PARA DISEÑO DE MEDIOS IMPRESOS</option>
                                                                <option value="TECNÓLOGO ESCRITURA PARA PRODUCTOS AUDIOVISUALES">TECNÓLOGO ESCRITURA PARA PRODUCTOS AUDIOVISUALES</option>
                                                                <option value="TECNÓLOGO SONIDO DIRECTO PARA PRODUCCIÓN DE MEDIOS AUDIOVISUALES">TECNÓLOGO SONIDO DIRECTO PARA PRODUCCIÓN DE MEDIOS AUDIOVISUALES</option>
                                                                <option value="TECNÓLOGO ILUSTRACIÓN PARA PRODUCCIONES AUDIOVISUALES">TECNÓLOGO ILUSTRACIÓN PARA PRODUCCIONES AUDIOVISUALES</option>
                                                                <option value="TECNÓLOGO GESTIÓN DE LA PRODUCCIÓN GRÁFICA">TECNÓLOGO GESTIÓN DE LA PRODUCCIÓN GRÁFICA</option>
                                                                <option value="TECNÓLOGO ANÁLISIS Y DESARROLLO DE SISTEMAS DE INFORMACIÓN">TECNÓLOGO ANÁLISIS Y DESARROLLO DE SISTEMAS DE INFORMACIÓN</option>
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
                                                            <option value="Academica">Academica</option>
                                                            <option value="Disiplinaria">Disiplinaria</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <br>
                                                <br>

                                                <div class="form-group">
                                                    <div class="col-lg-12">
                                                        <textarea class="form-control" name="Descricion" rows="5" placeholder="Descripción de tallada de los hechos que presuntamente constituyen la falta"></textarea>
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
                                                        <input id="file-es" name="fourthFile1" type="file" multiple>
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
                                            <input class="btn btn-default btn-block" type="reset" id="btnGuardar" name="evento" value="Cancelar">

                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input class="btn btn-success btn-block" type="submit" id="btnGuardar" name="evento" value="Guardar">

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

        <script>
            $(document).ready(function () {
                $("#select2").select2();
            });
        </script>


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

    </body>

</html>