//  2. Ejercicio 2: Constructores nombrados y @override
// Crea una clase Empleado que herede de Persona. Agrega un constructor nombrado que incluya nombre, edad y un nuevo atributo, cargo. 
//Sobrescribe el método de mostrar detalles para incluir el cargo del empleado.


class Persona {

  String nombre;
  int edad;

 
  Persona(this.nombre, this.edad);

 
  void mostrarDetalles() {
    print('Nombre: $nombre, Edad: $edad años');
  }
}

class Empleado extends Persona {
  
  String cargo;


  Empleado.conCargo(String nombre, int edad, this.cargo) : super(nombre, edad);

  
  @override
  void mostrarDetalles() {
    print('Nombre: $nombre, Edad: $edad años, Cargo: $cargo');
  }
}


void main() {
 
  var empleado1 = Empleado.conCargo('Albert', 23, 'Socio');


  empleado1.mostrarDetalles();
}

