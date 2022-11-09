/* las clases abstractas son clases que no se pueden instanciar 
se usan para que otras clases hereden sus metodos y propiedades */

abstract class persona {
  late String nombre; //late se usa para que la variable se inicialice despues
  late int edad;
  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
  void imprimirDescripcion() => print('Soy una persona');
}

class Cliente extends persona {
  late String direccion;
  late List ordenes = [];


  // constructor
  Cliente(int edadActual, String nombreActual) {
    this.edad = edadActual;
    this.nombre = nombreActual;
  }

  //el hecho de poder sobre escribir un metodo de la clase padre es una de las ventajas de las clases abstractas

  @override //se sobreescribe el metodo de la clase padre porque es diferente lo que hace un cliente a lo que hace un empleado
  void imprimirDescripcion() => print('Soy un cliente');

}

class Empleado extends persona {
  late String puesto;
  late double salario;

  // constructor
  Empleado(int edadActual, String nombreActual) {
    this.edad = edadActual;
    this.nombre = nombreActual;
  }

  @override //se sobreescribe el metodo de la clase padre porque es diferente lo que hace un empleado a lo que hace un cliente
  void imprimirDescripcion() => print('Soy un empleado');
  
}

void main() {

  //instancia la clase cliente que hereda de persona el metodo imprimirNombre
  final pedro = new Cliente(32, 'Pedro');
  pedro.imprimirNombre(); //funciona igual para todas las clases que heredan de persona no es necesario sobreescribir el metodo imprimirNombre
  pedro.imprimirDescripcion();

  //instancia de la clase cliente que hereda de persona el metodo imprimirNombre
  final juan = new Cliente(23, 'Juan');
  juan.imprimirNombre();
  juan.imprimirDescripcion();

  final luis = new Empleado(45, 'Luis');
  luis.imprimirNombre();
  luis.imprimirDescripcion();

  final maria = new Empleado(25, 'Maria');
  maria.imprimirNombre();
  maria.imprimirDescripcion();

}

  final maria = new Empleado(25, 'Maria');
  maria.imprimirNombre();
  maria.imprimirDescripcion();

}


//la diferencia entre extends y implements es que extends hereda de una clase abstracta y implements hereda de una interfaz

