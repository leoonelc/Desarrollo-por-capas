<?php
class ClaseConectar
{
    public $conexion;
    protected $db;
    private $host = "localhost";
    private $usu = "root";
    private $clave = "";
    private $base = "mecanica"; // <-- OJO: en tu script SQL la BD aparece como "mecanica" en minúsculas

    public function ProcedimientoConectar()
    {
        // Conectar a MySQL
        $this->conexion = mysqli_connect($this->host, $this->usu, $this->clave, $this->base);

        // Si falla, NO usar die(), retornar null
        if (!$this->conexion) {
            return null;
        }

        // Codificación
        mysqli_set_charset($this->conexion, "utf8");

        return $this->conexion;
    }
}
?>
