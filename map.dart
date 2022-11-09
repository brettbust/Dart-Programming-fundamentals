//un mapa es una estructura de datos que nos permite almacenar datos de forma asociativa, es decir, cada elemento del mapa tiene una clave y un valor

void main {
  //Map

  //es recomendable colocar el tipo de dato de la clave y el valor

  Map<String, int> numeros = {
    'uno': 1,
    'dos': 2,
    'tres': 3,
    'cuatro': 4,
    'cinco': 5,
    'seis': 6,
    'siete': 7,
    'ocho': 8,
    'nueve': 9,
    'diez': 10,
  };

//el tipo de dato dynamic nos permite almacenar cualquier tipo de dato en el mapa

 void main() {
 
 Map<String, dynamic> persona = {
    'nombre': 'Brett',
    'apellido': 'Bustamante',
    'edad': 31,
    'soltero': false
  };
  
  persona.addAll({'nacionalidad': 'Venezolana'});
  
  print(persona);
  print(persona['nombre']);
  print(persona['apellido']);
  print(persona['edad']);
  print(persona['soltero']);
  print(persona['nacionalidad']);
}

//addAll permite un elemento clave - valor a un mapa



