console.log("Hola")
   
function validaForm(){
    var valor = document.getElementById('nombre').value;
    if(valor == null || valor.length == 0) {
      alert(' [ERROR]El campo Nombre debe tener un valor...!');
        return false;
    }

    var valor2 = document.getElementById('correo').value;
    if(valor2 == null || valor2.length == 0) {alert('[ERROR] El campo correo debe tener un valor...!');
return false;}
    var valor3 = document.getElementById('mensaje').value;
    if(valor3 == null || valor3.length == 0 ) {alert('[ERROR] El campo mensaje debe tener un valor...!');
return false;}

alert('Los datos han sido enviados exitosamente...!');return true;
}

