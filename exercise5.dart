//  5. Ejercicio 5: Mixins y Factory constructor.
// Crea un mixin Nadador con un método nadar(). Agrégalo a una clase Delfín que herede de la clase abstracta Animal.
//  Define un Factory constructor en una clase Vehículo que devuelva una instancia de diferentes tipos de vehículos dependiendo 
//del tipo ingresado (e.g.,"auto", "moto").




abstract class Animal {
  void comer();
}


mixin Nadador {
  void nadar() {
    print('Estoy nadando');
  }
}


class Delfin extends Animal with Nadador {
  @override
  void comer() {
    print('El delfín está comiendo.');
  }
}


class Vehiculo {
  String tipo;


  Vehiculo(this.tipo);

 
  factory Vehiculo.crear(String tipo) {
    if (tipo == 'auto') {
      return Auto();
    } else if (tipo == 'moto') {
      return Moto();
    } else {
      throw ArgumentError('Tipo de vehículo desconocido');
    }
  }
}


class Auto extends Vehiculo {
  Auto() : super('auto');

  @override
  String toString() => 'Soy un Auto';
}

class Moto extends Vehiculo {
  Moto() : super('moto');

  @override
  String toString() => 'Soy una Moto';
}

void main() {
  // -------------------------------------------------
  var delfin = Delfin();
  delfin.comer();
  delfin.nadar();

  // -------------------------------------------------
  var vehiculo1 = Vehiculo.crear('auto');
  print(vehiculo1);

  var vehiculo2 = Vehiculo.crear('moto');
  print(vehiculo2);

// --------------------------------------------------
  try {
    var vehiculoDesconocido = Vehiculo.crear('bicicleta');
    print(vehiculoDesconocido);
  } catch (e) {
    print('Error: $e');
  }
}



