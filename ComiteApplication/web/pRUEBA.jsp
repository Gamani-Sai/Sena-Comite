<!DOCTYPE html>
<html>
    <head>
        <title>Submit Handler Demo</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/formValidation.css" rel="stylesheet" type="text/css"/>

        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/formValidation.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <!-- form: -->
                <section>
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="page-header">
                            <h2>Custom submit handler</h2>
                        </div>

                        <form id="defaultForm" method="post" class="form-horizontal" action="">
                            <div class="alert alert-success" style="display: none;"></div>

                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <div class="form-group col-lg-6">
                                        <input class="form-control" placeholder="Nombre" name="username" type="text">
                                    </div>

                                    <div class="form-group col-lg-6">
                                        <input class="form-control" placeholder="Apellido" name="Apellido" type="text" value="">
                                    </div>

                                    <div class="form-group col-lg-12">
                                        <input class="form-control" placeholder="Identificación" name="phone" type="text" value="">
                                    </div>

                                    <div class="form-group col-lg-6">
                                        <input class="form-control" placeholder="Contraseña" name="password" type="password" value="">
                                    </div>

                                    <div class="form-group col-lg-6">
                                        <input class="form-control" placeholder="Confirmar Contraseña" name="confirm_password" type="password" value="">
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
                    </div>
                </section>
                <!-- :form -->
            </div>
        </div>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#defaultForm')
                        .formValidation({
                            message: 'This value is not valid',
                            //live: 'submitted',
                            icon: {
                                valid: 'glyphicon glyphicon-ok',
                                invalid: 'glyphicon glyphicon-remove',
                                validating: 'glyphicon glyphicon-refresh'
                            },
                            fields: {
                                username: {
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
                                },
                                Apellido: {
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
                                },
                                phone: {
                                    message: 'The phone number is not valid',
                                    validators: {
                                        notEmpty: {
                                            message: 'The phone number is required'
                                        },
                                        digits: {
                                            message: 'The value can contain only digits'
                                        },
                                        stringLength: {
                                            min: 6,
                                            max: 11,
                                            message: 'The identificatión must be more than 6 and less than 11 characters long'
                                        }
                                    }
                                },
                                email: {
                                    validators: {
                                        notEmpty: {
                                            message: 'The email address is required and can\'t be empty'
                                        },
                                        emailAddress: {
                                            message: 'The input is not a valid email address'
                                        }
                                    }
                                },
                                password: {
                                    validators: {
                                        notEmpty: {
                                            message: 'The password is required and can\'t be empty'
                                        }
                                    }
                                },
                                confirm_password: {
                                    validators: {
                                        notEmpty: {
                                            message: 'The confirm password is required and cannot be empty'
                                        },
                                        identical: {
                                            field: 'password',
                                            message: 'The password and its confirm must be the same'
                                        }
                                    }
                                }
                            }
                        })
                        .on('success.form.fv', function (e) {
                            // Prevent submit form
                            e.preventDefault();

                            var $form = $(e.target),
                                    validator = $form.data('formValidation');
                            $form.find('.alert').html('Thanks for signing up. Now you can sign in as ' + validator.getFieldElements('username').val()).show();
                        });
            });
        </script>
    </body>
</html>