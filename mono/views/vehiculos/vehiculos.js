// ======================================================
//   INICIALIZACIÓN
// ======================================================
function init() {

  // Evento submit del formulario
  $("#form_vehiculos").on("submit", (e) => {
    GuardarEditarVehiculo(e);
  });

  // Evento botón NUEVO
  $("#btnNuevoVehiculo").on("click", () => {
    limpiarFormVehiculo();
    CargarClientesEnCombo(); // <-- recarga clientes al abrir modal
    $("#tituloModalVehiculo").text("Nuevo Vehículo");
  });

  console.log("vehiculos.js cargado OK");
}

// ======================================================
//   RUTAS ABSOLUTAS
// ======================================================
const rutaVeh = "../../controllers/vehiculo.controller.php?op=";
const rutaCli = "../../controllers/cliente.controller.php?op=";


// ======================================================
//   AL CARGAR LA PÁGINA
// ======================================================
$().ready(() => {
  CargaListaVehiculos();
  CargarClientesEnCombo();
});

// ======================================================
//   LISTAR VEHÍCULOS
// ======================================================
var CargaListaVehiculos = () => {
  $.get(rutaVeh + "todos", (ListVehiculos) => {
    ListVehiculos = JSON.parse(ListVehiculos);

    var html = "";
    $.each(ListVehiculos, (index, veh) => {
      html += `<tr>
        <td>${index + 1}</td>
        <td>${veh.cliente}</td>
        <td>${veh.marca}</td>
        <td>${veh.modelo}</td>
        <td>${veh.anio}</td>
        <td>${veh.tipo_motor}</td>
        <td>
          <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ModalVehiculos"
                  onclick="unoVeh(${veh.id})">Editar</button>

          <button class="btn btn-danger" onclick="eliminarVeh(${veh.id})">Eliminar</button>
        </td>
      </tr>`;
    });

    $("#ListaVehiculos").html(html);
  });
};

// ======================================================
//   LLENAR COMBO DE CLIENTES (CORREGIDO)
//   Usa op=combo y pinta cli.cliente
//   opcional: selectedId para marcar seleccionado
// ======================================================
var CargarClientesEnCombo = (selectedId = "") => {
  $.get(rutaCli + "combo")
    .done((resp) => {
      console.log("RESPUESTA CLIENTES RAW:", resp);

      let data;
      try {
        data = JSON.parse(resp);
      } catch (e) {
        console.error("No es JSON, revisar controlador:", resp);
        return;
      }

      let html = "<option value=''>Seleccione un cliente</option>";
      data.forEach(cli => {
        let sel = (cli.id == selectedId) ? "selected" : "";
        html += `<option value="${cli.id}" ${sel}>${cli.cliente}</option>`;
      });

      $("#id_cliente").html(html);
    })
    .fail((xhr) => {
      console.error("ERROR AJAX CLIENTES:", xhr.responseText);
    });
};

// ======================================================
//   GUARDAR / EDITAR VEHÍCULO + NOTIFICACIÓN
// ======================================================
var GuardarEditarVehiculo = (e) => {
  e.preventDefault();

  var DatosFormVeh = new FormData($("#form_vehiculos")[0]);
  var vehiculoId = $("#idvehiculo").val();
  var accion = vehiculoId > 0 ? rutaVeh + "actualizar" : rutaVeh + "insertar";

  if (vehiculoId > 0) {
    DatosFormVeh.append("id", vehiculoId);
  }

  $.ajax({
    url: accion,
    type: "post",
    data: DatosFormVeh,
    processData: false,
    contentType: false,
    cache: false,

    success: (respuesta) => {
      let parsed;

      try {
        parsed = JSON.parse(respuesta);
      } catch (e) {
        Swal.fire("Error", "Respuesta inesperada del servidor", "error");
        console.error(respuesta);
        return;
      }

      if (parsed === "ok") {

        Swal.fire({
          icon: "success",
          title: vehiculoId > 0 ? "Actualizado" : "Guardado",
          text: vehiculoId > 0
            ? "El vehículo se actualizó correctamente."
            : "El vehículo se registró correctamente.",
          timer: 2000,
          showConfirmButton: false
        });

        CargaListaVehiculos();
        limpiarFormVehiculo();
        cerrarModalVehiculo();

      } else {
        Swal.fire("Error", parsed, "error");
      }
    },

    error: (xhr, status, error) => {
      console.error("Error AJAX:", status, error);
      console.error("Respuesta servidor:", xhr.responseText);
      Swal.fire("Error", "No se pudo completar la acción", "error");
    }
  });
};

// ======================================================
//   TRAER UN VEHÍCULO
//   (carga combo y selecciona el cliente correcto)
// ======================================================
var unoVeh = (id) => {
  $.post(rutaVeh + "uno", { idvehiculo: id }, (veh) => {
    veh = JSON.parse(veh);

    $("#tituloModalVehiculo").text("Editar Vehículo");

    $("#idvehiculo").val(veh.id);
    $("#marca").val(veh.marca);
    $("#modelo").val(veh.modelo);
    $("#anio").val(veh.anio);
    $("#tipo_motor").val(veh.tipo_motor);

    // ✅ siempre recarga combo y deja seleccionado el cliente
    CargarClientesEnCombo(veh.id_cliente);
  });
};

// ======================================================
//   ELIMINAR VEHÍCULO + CONFIRMACIÓN + NOTIFICACIÓN
// ======================================================
var eliminarVeh = (id) => {

  Swal.fire({
    title: "¿Estás seguro?",
    text: "Este vehículo se eliminará permanentemente",
    icon: "warning",
    showCancelButton: true,
    confirmButtonText: "Sí, eliminar",
    cancelButtonText: "Cancelar"
  }).then((result) => {

    if (result.isConfirmed) {
      $.post(rutaVeh + "eliminar", { idvehiculo: id }, (respuesta) => {
        respuesta = JSON.parse(respuesta);

        if (respuesta === "ok") {

          Swal.fire({
            icon: "success",
            title: "Eliminado",
            text: "Vehículo eliminado correctamente.",
            timer: 1800,
            showConfirmButton: false
          });

          CargaListaVehiculos();

        } else {
          Swal.fire("Error", "No se pudo eliminar el vehículo", "error");
        }
      });
    }

  });

};

// ======================================================
//   LIMPIAR FORMULARIO (NO CIERRA MODAL)
// ======================================================
function limpiarFormVehiculo() {
  $("#idvehiculo").val("");
  $("#id_cliente").val("");
  $("#marca").val("");
  $("#modelo").val("");
  $("#anio").val("");
  $("#tipo_motor").val("dos_tiempos");
}

// ======================================================
//   CERRAR MODAL (solo cuando guardas)
// ======================================================
function cerrarModalVehiculo() {
  $("#ModalVehiculos").modal("hide");
}

// Ejecutar
init();
