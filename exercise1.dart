//  1. Ejercicio 1: Clases y Objetos.
//  Define una clase Persona con atributos, nombre y edad. Crea una instancia de esta clase e imprime sus valores.
//  Agrega un método para mostrar los detalles de la persona.


class Persona {
  
  String nombre;
  int edad;


  Persona(this.nombre, this.edad);

 
  void mostrarDetalles() {
    print('Nombre: $nombre, Edad: $edad años');
  }
}

void main() {
  
  var persona1 = Persona('Albert', 23);

 
  print('Nombre: ${persona1.nombre}');
  print('Edad: ${persona1.edad} años');

 
  persona1.mostrarDetalles();
}
