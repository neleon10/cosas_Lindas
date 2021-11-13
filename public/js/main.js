//Atrapo btn
document.getElementById('submitBtn').addEventListener("click", validarForm);


function validarForm() {

    const nombre = document.querySelector('#nombreForm');
    if (nombre.validity.typeMismatch || nombre == null) {
        nombre.setCustomValidity('Intoduzca el nombre correcto');
    } else {
        nombre.setCustomValidity('');
    }
    const apellido = document.querySelector('#apellidoForm');
    if (apellido.validity.typeMismatch || apellido == null) {
        apellido.setCustomValidity('Introduzca el apellido correcto');
    } else {
        apellido.setCustomValidity('');
    }

    const email = document.querySelector('#emailForm');
    if (email.validity.typeMismatch) {
        email.setCustomValidity('Introduzca el email correcto');
    } else {
        email.setCustomValidity('');
    }
}

