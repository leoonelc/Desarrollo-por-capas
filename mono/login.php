<!DOCTYPE html>
<html lang="es" class="light-style customizer-hide" dir="ltr" data-assets-path="public/assets/" data-template="vertical-menu-template-free">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Ingreso Administrador</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="./public/images/logo.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="./public/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="./public/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="./public/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="./public/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="./public/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->
    <link rel="stylesheet" href="./public/assets/vendor/css/pages/page-auth.css" />

    <!-- Helpers -->
    <script src="./public/assets/vendor/js/helpers.js"></script>
    <script src="./public/assets/js/config.js"></script>
</head>

<body>
    <!-- Content -->
    <div class="container-xxl">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Login Card -->
                <div class="card">
                    <div class="card-body">
                        <!-- Logo -->
                        <div class="app-brand" style="text-align: center;">
                            <span class="app-brand-logo demo">
                                <img src="./public/images/logo.jpeg" style="width: 50%;">
                            </span>
                        </div>
                        <!-- /Logo -->

                        <h4 class="mb-2">Ingreso Administrador</h4>
                        <p class="mb-4">El módulo de inicio de sesión aún no está habilitado.</p>

                        <!-- FORM SOLO DE MAQUETA, SIN BACKEND -->
                        <form id="formLogin" class="mb-3">
                            <div class="mb-3">
                                <label for="nombre_usuario" class="form-label">Nombre Usuario</label>
                                <input type="text" class="form-control" id="nombre_usuario" name="nombre_usuario" placeholder="Ingrese su nombre de usuario" autofocus />
                            </div>
                            <div class="mb-3 form-password-toggle">
                                <div class="d-flex justify-content-between">
                                    <label class="form-label" for="contrasenia">Contraseña</label>
                                </div>
                                <div class="input-group input-group-merge">
                                    <input type="password" id="contrasenia" class="form-control" name="contrasenia" placeholder="*************" />
                                    <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                                </div>
                            </div>

                            <div class="mb-3">
                                <button class="btn btn-outline-primary d-grid w-100" type="submit">Ingresar</button>
                            </div>
                        </form>

                        <div id="mensajeLogin" class="alert alert-info" style="display:none;">
                            El inicio de sesión todavía no está implementado.
                        </div>
                    </div>
                </div>
                <!-- /Login Card -->
            </div>
        </div>
    </div>
    <!-- / Content -->

    <!-- Core JS -->
    <script src="./public/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="./public/assets/vendor/libs/popper/popper.js"></script>
    <script src="./public/assets/vendor/js/bootstrap.js"></script>
    <script src="./public/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="./public/assets/vendor/js/menu.js"></script>
    <script src="./public/assets/js/main.js"></script>

    <script>
        // Bloquea el envío real y muestra un mensaje
        document.getElementById('formLogin').addEventListener('submit', function (e) {
            e.preventDefault();
            document.getElementById('mensajeLogin').style.display = 'block';
        });
    </script>
</body>

</html>
