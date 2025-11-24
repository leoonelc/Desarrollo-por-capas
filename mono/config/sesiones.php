<?php
// Iniciar sesión sin imprimir nada
if (session_status() === PHP_SESSION_NONE) {
    @session_start();
}

/*
  Modo desarrollo: asigna un rol si no existe.
  IMPORTANTE: no generar NINGÚN echo ni HTML aquí.
*/
if (!isset($_SESSION['Rol'])) {
    $_SESSION['Rol'] = 'ADMINISTRADOR'; // Solo desarrollo
}

/*
  Si quieres activar validación real de sesión en el futuro:
    if (!isset($_SESSION['idUsuario'])) { ... }
*/
