//Elementos estáticos de las listas

//Los metodós estáticos son los que se pueden llamar sin necesidad de crear una instancia de la clase

void main() {
 
  final masNumeros = List.generate(10, (index) => index * 2);
  
  print(masNumeros);

}

//esto me regresa una lista de 10 elementos, los cuales son el doble de su indice

//generate es un metodo estatico de la clase List

//generate recibe dos parametros, el primero es la cantidad de elementos que va a tener la lista, el segundo es una función que recibe un indice y regresa un valor

//para este ejemplo el resultado es: [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]