//los futures son una forma de manejar el asincronismo en dart

void main(){
 
print("antes de la peticion");  //se ejecuta primero porque es sincrono

httpGet('https://api.nasa.com/aliens').then((response){ //then es una funcion que se ejecuta cuando la peticion http se resuelve
  print(response.toUpperCase()); //se ejecuta despues de la peticion porque es asincrono
});

print("despues de la peticion"); //se ejecuta primero porque es sincrono



}

Future < String > httpGet ( String url ) { //se crea una funcion que retorna un future de tipo string
  return Future.delayed ( Duration ( seconds : 3 ), () { //se crea un future que se ejecutara en 4 segundos
    return 'Hola Mundo a los 3 segundos' ; //se retorna un string
  });
}

//delayed es una funcion que se ejecuta despues de un tiempo determinado
//Durarion es una clase que se usa para determinar el tiempo
//seconds es una propiedad de la clase Duration que se usa para determinar los segundos
