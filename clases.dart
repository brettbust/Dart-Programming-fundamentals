void main(){
  
final wolverine = new Heroe(); //en dart la palabra new es opcional

  wolverine.nombre = 'Logan';

  wolverine.poder = 'Regeneración';
  
  print( wolverine );
}
  
class Heroe {
  
  String? nombre;
  String? poder;

  Heroe( { required this.nombre, required this.poder } ); //el required es para que no se puedan crear objetos sin los parametros requeridos){

    //el costructor sirve para inicializar las propiedades de la clase
    //si no se crea un constructor, dart crea uno por defecto
    //el nombre del constructor en dart es el mismo nombre de la clase
  }


//esto es lo mismo que lo de arriba, pero lo de arriba está mas optimizado

  /* Heroe(String nombre){
    this.nombre = nombre;
  } */

  //sobreescribo el metodo toString para que me imprima el nombre y el poder del objeto
  
  
  @override
  
  String toString(){
    return 'nombre: ${this.nombre}, poder: ${this.poder}';
  }


//this se usa para referirse a la instancia de la clase

//en este caso, this.nombre hace referencia a la propiedad nombre de la clase

//las llaves se usan para interpolar el valor de la propiedad nombre