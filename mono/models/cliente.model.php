<?php
require_once('../config/conexion.php');

class Clientes
{
    public function todos()
    {
        $con = new ClaseConectar();
        $con = $con->ProcedimientoConectar();
        $cadena = "SELECT * FROM clientes";
        $datos = mysqli_query($con, $cadena);
        return $datos;
        $con->close();
    }

    public function uno($idclientes)
    {
        $con = new ClaseConectar();
        $con = $con->ProcedimientoConectar();
        $cadena = "SELECT * FROM clientes WHERE id = $idclientes";
        $datos = mysqli_query($con, $cadena);
        return $datos;
        $con->close();
    }

    public function Insertar($nombres, $apellidos, $telefono, $correo_electronico)
    {
        $con = new ClaseConectar();
        $con = $con->ProcedimientoConectar();

        // fecha_creacion tiene DEFAULT CURRENT_TIMESTAMP
        $cadena = "INSERT INTO clientes (nombres, apellidos, telefono, correo_electronico)
                   VALUES ('$nombres', '$apellidos', '$telefono', '$correo_electronico')";

        if (mysqli_query($con, $cadena)) {
            return 'ok';
        } else {
            return 'Error al insertar en la base de datos: ' . mysqli_error($con);
        }
        $con->close();
    }

    public function Actualizar($idclientes, $nombres, $apellidos, $telefono, $correo_electronico)
    {
        $con = new ClaseConectar();
        $con = $con->ProcedimientoConectar();

        $cadena = "UPDATE clientes
                   SET nombres='$nombres',
                       apellidos='$apellidos',
                       telefono='$telefono',
                       correo_electronico='$correo_electronico'
                   WHERE id = $idclientes";

        if (mysqli_query($con, $cadena)) {
            return 'ok';
        } else {
            return 'error al actualizar el registro: ' . mysqli_error($con);
        }
        $con->close();
    }

    public function Eliminar($idclientes)
    {
        $con = new ClaseConectar();
        $con = $con->ProcedimientoConectar();
        $cadena = "DELETE FROM clientes WHERE id = $idclientes";

        if (mysqli_query($con, $cadena)) {
            return 'ok';
        } else {
            return false;
        }
        $con->close();
    }
}

