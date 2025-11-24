<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once('../config/sesiones.php');
require_once("../models/cliente.model.php");

$Clientes = new Clientes;

switch ($_GET["op"]) {

    case 'todos':
        $datos = $Clientes->todos();
        $todos = [];
        while ($row = mysqli_fetch_assoc($datos)) {
            $todos[] = $row;
        }
        echo json_encode($todos);
        break;

    case 'combo':
        $datos = $Clientes->todos();
        $resultado = [];

        while ($row = mysqli_fetch_assoc($datos)) {
            $resultado[] = [
                "id"      => $row["id"],
                "cliente" => $row["nombres"] . " " . $row["apellidos"]
            ];
        }

        echo json_encode($resultado);
        break;

    case 'uno':
        $idclientes = $_POST["idclientes"];
        $datos = $Clientes->uno($idclientes);
        $res = mysqli_fetch_assoc($datos);
        echo json_encode($res);
        break;

    case 'insertar':
        $nombres            = $_POST["nombres"];
        $apellidos          = $_POST["apellidos"];
        $telefono           = $_POST["telefono"];
        $correo_electronico = $_POST["correo_electronico"];

        $respuesta = $Clientes->Insertar($nombres, $apellidos, $telefono, $correo_electronico);
        echo json_encode($respuesta);
        break;

    case 'actualizar':
        $idclientes         = $_POST["id"];
        $nombres            = $_POST["nombres"];
        $apellidos          = $_POST["apellidos"];
        $telefono           = $_POST["telefono"];
        $correo_electronico = $_POST["correo_electronico"];

        $respuesta = $Clientes->Actualizar($idclientes, $nombres, $apellidos, $telefono, $correo_electronico);
        echo json_encode($respuesta);
        break;

    case 'eliminar':
        $idclientes = $_POST["idclientes"];
        $respuesta = $Clientes->Eliminar($idclientes);
        echo json_encode($respuesta);
        break;
}
