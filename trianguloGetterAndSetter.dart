void main(){
  Triangulo triangulo = Triangulo();
  
  triangulo.base = 10;
  triangulo.altura = 20;
  
  print(triangulo.area);
}

class Triangulo{
  
  late double _base;
  
  late double _altura;
  
  set base (double base) {
    _base = base;
  }
  
  set altura (double base) {
    _altura = base;
  }
  
  get area => (_base*_altura)/2;
  
  
}