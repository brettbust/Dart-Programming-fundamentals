
//Los contructores por nombre son una forma de inicializar los atributos de una clase sin necesidad de pasarlos por parametro en el constructor común


void main(){
  
final rawJson = {
  "nombre":"Brett",
  
};

final persona = Persona.fromJson(rawJson);

print(persona);
  
}

/* class Persona {
  
  String? nombre; //si siempre necesito que tenga un valor, debo quitarle el signo de interrogacion
  int? edad;
  
  Persona.fromJson(Map<String, dynamic> parsedJson){
    
    this.nombre = parsedJson['nombre'] ?? 'Sin nombre'; //si no existe el nombre, se le asigna el valor 'Sin nombre'
    this.edad = parsedJson['edad'] ?? 0; //si no existe la edad, se le asigna el valor 0

    //los signos ?? permiten imprimir un valor diferente en el caso de que el valor sea nulo o no exista


  } */

  //la mismas clases pero los atributos no aceptan valores nulos

  class Persona {
  
  String nombre; //si siempre necesito que tenga un valor, debo quitarle el signo de interrogacion
  int edad;

  //se quita la llave de abertura y se agregan los dos puntos
  //se quita la llave de cierre

  //esto se ejecuta en el momento en que se crea la instancia de la clase por eso es permitido
  
  Persona.fromJson(Map<String, dynamic> parsedJson):

    //los dos puntos indican que se va a ejecutar en el momento en que se crea la instancia de la clase
    
    this.nombre = parsedJson['nombre'] ?? 'Sin nombre', //si no existe el nombre, se le asigna el valor 'Sin nombre'
    this.edad = parsedJson['edad'] ?? 0; //si no existe la edad, se le asigna el valor 0

    //los signos ?? permiten imprimir un valor diferente en el caso de que el valor sea nulo o no exista

 
@override

String toString(){
    return 'nombre: ${this.nombre}, edad: ${this.edad}';
  }
}
