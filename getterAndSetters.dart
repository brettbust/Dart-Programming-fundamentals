//un getter es una funcion que se llama como si fuera una propiedad

//en dart un getter no recibe parametros

import 'dart:math' as math; //importa la libreria math

void main(){
  final cuadrado = Cuadrado( 5 );

  cuadrado.area = 100;
  
  print(cuadrado.lado * cuadrado.lado);
  print(cuadrado.lado); //esto imprime 10 
  print(cuadrado.area); //llamo a area como si fuera una propiedad pero en realidad es una funcion getter
}

class Cuadrado{
  double lado; //l x l
 
  Cuadrado(this.lado);

  double get area => lado * lado; //esto es un getter, no recibe parametros

  set area(double valor){
    lado = math.sqrt(valor);
  }

}
  


//un setter se usa para asignar valores a una propiedad