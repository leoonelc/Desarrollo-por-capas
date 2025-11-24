<?php
require_once('../config/conexion.php');

class Vehiculos
{
    public function todos()
    {
        $con = new ClaseConectar();
        $con = $con->ProcedimientoConectar();

        // Trae datos + nombre del cliente
        $cadena = "SELECT v.*, 
                          CONCAT(c.nombres, ' ', c.apellidos) AS cliente
                   FROM vehiculos v
                   INNER JOIN clientes c ON c.id = v.id_cliente
                   ORDER BY v.id DESC";

        $datos = mysqli_query($con, $cadena);
        return $datos;
        $con->close();
    }

    public function uno($idvehiculo)
    {
        $con = new ClaseConectar();
        $con = $con->ProcedimientoConectar();

        $cadena = "SELECT * FROM vehiculos WHERE id = $idvehiculo";
        $datos = mysqli_query($con, $cadena);
        return $datos;
        $con->close();
    }

    public function Insertar($id_cliente, $marca, $modelo, $anio, $tipo_motor)
    {
        $con = new ClaseConectar();
        $con = $con->ProcedimientoConectar();

        $cadena = "INSERT INTO vehiculos (id_cliente, marca, modelo, anio, tipo_motor)
                   VALUES ($id_cliente, '$marca', '$modelo', $anio, '$tipo_motor')";

        if (mysqli_query($con, $cadena)) {
            return 'ok';
        } else {
            return 'Error al insertar: ' . mysqli_error($con);
        }
        $con->close();
    }

    public function Actualizar($idvehiculo, $id_cliente, $marca, $modelo, $anio, $tipo_motor)
    {
        $con = new ClaseConectar();
        $con = $con->ProcedimientoConectar();

        $cadena = "UPDATE vehiculos
                   SET id_cliente = $id_cliente,
                       marca      = '$marca',
                       modelo     = '$modelo',
                       anio       = $anio,
                       tipo_motor = '$tipo_motor'
                   WHERE id = $idvehiculo";

        if (mysqli_query($con, $cadena)) {
            return 'ok';
        } else {
            return 'Error al actualizar: ' . mysqli_error($con);
        }
        $con->close();
    }

    public function Eliminar($idvehiculo)
    {
        $con = new ClaseConectar();
        $con = $con->ProcedimientoConectar();

        $cadena = "DELETE FROM vehiculos WHERE id = $idvehiculo";

        if (mysqli_query($con, $cadena)) {
            return 'ok';
        } else {
            return 'Error al eliminar: ' . mysqli_error($con);
        }
        $con->close();
    }
}
