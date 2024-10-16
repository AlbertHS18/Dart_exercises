// 4. Ejercicio 4: Extensiones y Enumeraciones.
//  Crea una enumeración DiaSemana con los días de la semana.
//  Define una extensión sobre int que devuelva true si el número es par. Úsalo para verificar si un número ingresado por el usuario es par.



import 'dart:io';

enum DiaSemana {
  lunes,
  martes,
  miercoles,
  jueves,
  viernes,
  sabado,
  domingo
}


extension NumeroPar on int {
  bool esPar() {
    return this % 2 == 0;
  }
}

void main() {
 
  print('Días de la semana:');
  for (var dia in DiaSemana.values) {
    print(dia);
  }

  print('\nIngresa un número para verificar si es par:');
  int? numero = int.tryParse(stdin.readLineSync()!);

  
  if (numero != null) {
    if (numero.esPar()) {
      print('El número $numero es par.');
    } else {
      print('El número $numero es impar.');
    }
  } else {
    print('Por favor, ingresa un número válido.');
  }
}
