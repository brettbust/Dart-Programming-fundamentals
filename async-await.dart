void main() async {

  print("Antes de la petición"); // Se ejecuta antes de la petición porque es sincrono

  final nombre = await getNombre("10"); 

  print(nombre);

  /* getNombre('10').then((value) => print(value)); */ // then es un callback que se ejecuta cuando la petición se resuelve

  print("Después de la petición"); // Se ejecuta antes de que se resuelva la petición porque es sincrono


}

Future<String> getNombre(String id) async { // async indica que es una función asíncrona es decir que no se ejecuta de forma secuencial

  return '${id} - Brett';

}

//si se quiere que getNombre se ejecute primero se debe usar await

//el await indica que se debe esperar a que se resuelva la petición para continuar con el código

//si se usa await se debe usar async en la función que lo contiene

//

