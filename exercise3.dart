//  3. Ejercicio 3: Aserciones y Clases Abstractas
//  Define una clase abstracta Animal con un método comer(). Crea una subclase Perro que implemente este método.
//  Agrega una aserción en el constructor de Perro para asegurarte de que la edad del perro sea mayor que 0.



abstract class Animal {
  
  void comer();
}


class Perro extends Animal {
  String nombre;
  int edad;


  Perro(this.nombre, this.edad) {
    if (edad <= 0) {
      throw ArgumentError('La edad debe ser mayor que 0');
    }
  }

  
  @override
  void comer() {
    print('$nombre está comiendo.');
  }
}

void main() {

  var perro1 = Perro('Max', 3);
  perro1.comer();

 
  try {
    var perro2 = Perro('Roki', -1); 
    perro2.comer();
  } catch (e) {
    print('Error: $e');
  }
}

