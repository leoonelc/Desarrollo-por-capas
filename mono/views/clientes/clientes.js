function init() {
  // Cuando se envíe el formulario de clientes, llamamos a GuardarEditar
  $("#form_clientes").on("submit", (e) => {
    GuardarEditar(e);
  });
}

// Ruta hacia el controlador de clientes
const ruta = "../../controllers/cliente.controller.php?op=";

$().ready(() => {
  CargaLista();
});

// Cargar lista de clientes en la tabla
var CargaLista = () => {
  var html = "";
  $.get(ruta + "todos", (ListClientes) => {
    ListClientes = JSON.parse(ListClientes);
    console.log(ListClientes);
    $.each(ListClientes, (index, cliente) => {
      html += `<tr>
        <td>${index + 1}</td>
        <td>${cliente.nombres}</td>
        <td>${cliente.apellidos}</td>
        <td>${cliente.telefono ? cliente.telefono : ""}</td>
        <td>${cliente.correo_electronico ? cliente.correo_electronico : ""}</td>
        <td>
          <button class='btn btn-primary' data-bs-toggle="modal" data-bs-target="#ModalClientes" onclick='uno(${cliente.id})'>Editar</button>
          <button class='btn btn-danger' onclick='eliminar(${cliente.id})'>Eliminar</button>
        </td>
      </tr>`;
    });
    $("#ListaClientes").html(html);
  });
};

// Guardar o editar cliente
var GuardarEditar = (e) => {
  e.preventDefault();

  console.log("Enviando formulario de clientes...");

  var DatosFormularioCliente = new FormData($("#form_clientes")[0]);
  var accion = "";
  var clienteId = document.getElementById("idclientes").value;

  if (clienteId > 0) {
    accion = ruta + "actualizar";
    DatosFormularioCliente.append("id", clienteId); // el controlador espera "id"
  } else {
    accion = ruta + "insertar";
  }

  console.log("URL a la que voy a enviar:", accion);
  for (var pair of DatosFormularioCliente.entries()) {
    console.log(pair[0] + " = " + pair[1]);
  }

  $.ajax({
    url: accion,
    type: "post",
    data: DatosFormularioCliente,
    processData: false,
    contentType: false,
    cache: false,
    success: (respuesta) => {
      console.log("Respuesta cruda del servidor:", respuesta);

      let parsed;
      try {
        parsed = JSON.parse(respuesta);
      } catch (e) {
        console.error("Error al parsear JSON:", e);
        alert("Respuesta inesperada del servidor:\n" + respuesta);
        return;
      }

      console.log("Respuesta parseada:", parsed);

      if (parsed === "ok") {
        alert("Se guardó con éxito");
        CargaLista();
        LimpiarCajas();
      } else {
        alert("Error al guardar: " + parsed);
      }
    },
    error: (xhr, status, error) => {
      console.error("Error AJAX:", status, error);
      console.error("Respuesta del servidor:", xhr.responseText);
      alert("Error en la petición AJAX: " + status);
    }
  });
};

// Traer un cliente por id y llenarlo en el formulario
var uno = (idclientes) => {
  console.log(idclientes);
  $.post(ruta + "uno", { idclientes: idclientes }, (cliente) => {
    cliente = JSON.parse(cliente);
    console.log(cliente);
    document.getElementById("idclientes").value = cliente.id;
    document.getElementById("nombres").value = cliente.nombres;
    document.getElementById("apellidos").value = cliente.apellidos;
    document.getElementById("telefono").value = cliente.telefono;
    document.getElementById("correo_electronico").value = cliente.correo_electronico;
  });
};

// Eliminar cliente (borrado definitivo)
var eliminar = (idclientes) => {
  $.post(ruta + "eliminar", { idclientes: idclientes }, (respuesta) => {
    respuesta = JSON.parse(respuesta);
    if (respuesta == "ok") {
      alert("Se eliminó con éxito");
      CargaLista();
    } else {
      alert("Error al eliminar");
    }
  });
};

// Limpiar formulario y cerrar modal
var LimpiarCajas = () => {
  document.getElementById("idclientes").value = "";
  document.getElementById("nombres").value = "";
  document.getElementById("apellidos").value = "";
  document.getElementById("telefono").value = "";
  document.getElementById("correo_electronico").value = "";
  $("#ModalClientes").modal("hide");
};

init();






