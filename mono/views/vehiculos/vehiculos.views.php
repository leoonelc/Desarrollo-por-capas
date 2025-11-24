<?php 
require_once('../html/head2.php'); 
require_once('../../config/sesiones.php');  
?>

<h4 class="fw-bold py-3 mb-4">
    <span class="text-muted fw-light">RegAsis /</span> Vehículos
</h4>

<!-- Tabla de Vehículos -->
<div class="card">

    <!-- Botón NUEVO VEHICULO -->
    <button type="button" id="btnNuevoVehiculo" class="btn btn-outline-secondary"
            data-bs-toggle="modal" data-bs-target="#ModalVehiculos">
        Nuevo Vehículo
    </button>

    <h5 class="card-header">Lista de Vehículos</h5>
    <div class="table-responsive text-nowrap">
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Cliente</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Año</th>
                    <th>Tipo Motor</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody class="table-border-bottom-0" id="ListaVehiculos">
                <!-- Aquí se llena con vehiculos.js -->
            </tbody>
        </table>
    </div>
</div>

<!-- Modal Vehículos -->
<div class="modal" tabindex="-1" id="ModalVehiculos">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="tituloModalVehiculo">Nuevo Vehículo</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <form id="form_vehiculos" method="post">
                <input type="hidden" name="idvehiculo" id="idvehiculo">

                <div class="modal-body">

                    <div class="form-group mb-2">
                        <label for="id_cliente">Cliente</label>
                        <select name="id_cliente" id="id_cliente" class="form-control" required>
                            <!-- Se llena desde vehiculos.js con los clientes -->
                        </select>
                    </div>

                    <div class="form-group mb-2">
                        <label for="marca">Marca</label>
                        <input type="text" name="marca" id="marca" class="form-control" placeholder="Ingrese marca" required>
                    </div>

                    <div class="form-group mb-2">
                        <label for="modelo">Modelo</label>
                        <input type="text" name="modelo" id="modelo" class="form-control" placeholder="Ingrese modelo" required>
                    </div>

                    <div class="form-group mb-2">
                        <label for="anio">Año</label>
                        <input type="number" name="anio" id="anio" class="form-control" placeholder="Ingrese año" required>
                    </div>

                    <div class="form-group mb-2">
                        <label for="tipo_motor">Tipo de Motor</label>
                        <select name="tipo_motor" id="tipo_motor" class="form-control" required>
                            <option value="dos_tiempos">Dos tiempos</option>
                            <option value="cuatro_tiempos">Cuatro tiempos</option>
                        </select>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Guardar</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php require_once('../html/scripts2.php'); ?>
<script src="./vehiculos.js"></script>
