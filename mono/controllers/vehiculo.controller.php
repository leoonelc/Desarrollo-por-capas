<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once('../config/sesiones.php');
require_once("../models/vehiculo.model.php");

$Vehiculos = new Vehiculos;

switch ($_GET["op"]) {

    // ==========================================
    // LISTAR TODOS LOS VEHÍCULOS
    // ==========================================
    case 'todos':
        $datos = $Vehiculos->todos();
        $todos = [];
        while ($row = mysqli_fetch_assoc($datos)) {
            $todos[] = $row;
        }
        echo json_encode($todos);
        break;

    // ==========================================
    // OBTENER UN VEHÍCULO POR ID
    // ==========================================
    case 'uno':
        $idvehiculo = $_POST["idvehiculo"];
        $datos = $Vehiculos->uno($idvehiculo);
        $res = mysqli_fetch_assoc($datos);
        echo json_encode($res);
        break;

    // ==========================================
    // INSERTAR VEHÍCULO
    // ==========================================
    case 'insertar':
        $id_cliente  = $_POST["id_cliente"];
        $marca       = $_POST["marca"];
        $modelo      = $_POST["modelo"];
        $anio        = $_POST["anio"];
        $tipo_motor  = $_POST["tipo_motor"];

        $respuesta = $Vehiculos->Insertar($id_cliente, $marca, $modelo, $anio, $tipo_motor);
        echo json_encode($respuesta);
        break;

    // ==========================================
    // ACTUALIZAR VEHÍCULO
    // ==========================================
    case 'actualizar':
        $idvehiculo  = $_POST["id"];
        $id_cliente  = $_POST["id_cliente"];
        $marca       = $_POST["marca"];
        $modelo      = $_POST["modelo"];
        $anio        = $_POST["anio"];
        $tipo_motor  = $_POST["tipo_motor"];

        $respuesta = $Vehiculos->Actualizar($idvehiculo, $id_cliente, $marca, $modelo, $anio, $tipo_motor);
        echo json_encode($respuesta);
        break;

    // ==========================================
    // ELIMINAR VEHÍCULO
    // ==========================================
    case 'eliminar':
        $idvehiculo = $_POST["idvehiculo"];
        $respuesta = $Vehiculos->Eliminar($idvehiculo);
        echo json_encode($respuesta);
        break;
}
