<%-- 
    Document   : index
    Created on : 8/05/2015, 11:14:20 AM
    Author     : gestion
--%>

<%@page import="Controlador.ConFechas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Inicio de sesion</title>

        <!-- Bootstrap Core CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- MetisMenu CSS -->
        <link href="css/metisMenu/metisMenu.min.css" rel="stylesheet" type="text/css"/>

        <!-- Custom CSS -->
        <link href="css/sb-admin-2.css" rel="stylesheet" type="text/css"/>

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    </head>

    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <center>  
                                <h3 class="panel-title">Inicio de sesion</h3>
                            </center>

                        </div>
                        <div class="panel-body">
                            <form role="form">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Identificación" name="" type="text" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Contraseña" name="password" type="password" value="">
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->

                                </fieldset>



                            </form>
                        </div>

                        <div class="panel-footer">
                            <div class="row">
                                <a href="Menu.jsp" class="btn btn-lg btn-success btn-block">Iniciar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="alert alert-success" role="alert" style="width: 24%; margin-left: 937px;margin-top: -30%;">
                <strong>Fecha para próximo  comité</strong>
                <button type="button" class="btn btn-info fa fa-eye" data-toggle="modal" data-target=".bs-example-modal-sm" style="margin-left: 9px;"></button>
            </div>


            <!--Modal de programas --> 
            <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="myModalLabel">Fecha</h4>
                        </div>
                        <form id="defaultForm" action="" method="POST">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="tab-content">
                                        <div class="tab-pane active">
                                            <table id="tblCuenta" class="table table-hover" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">Fecha inicio</th> 
                                                        <th class="text-center">Fecha fin</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        ConFechas list_Fechas = new ConFechas();
                                                        out.println(list_Fechas.listar());
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

        <!-- jQuery -->
        <script src="js/jquery.min.js" type="text/javascript"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="css/metisMenu/metisMenu.min.js" type="text/javascript"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/sb-admin-2.js" type="text/javascript"></script>


    </body>

</html>
