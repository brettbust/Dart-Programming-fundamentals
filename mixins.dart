void main() {

final flipper = new Delfin();
flipper.nadar();

final batman = new Murcielago();
batman.volar();
batman.caminar();

final garffild = new Gato();
garffild.caminar();


}

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('Estoy volando');
}

abstract class Caminante {
  void caminar() => print('Estoy caminando');
}

abstract class Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {} //with es una palabra reservada para usar mixins

class Murcielago extends Mamifero with Volador, Caminante {} //se pueden usar varios mixins

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Nadador, Caminante {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Volador, Nadador {}


