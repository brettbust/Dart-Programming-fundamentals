void main() {
  
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10]; //se recomienda colocar el tipo de dato para tener un mejor control de los datos
  
  numeros.add(11);
  
  print(numeros);

//addAll permite agregar a una lista otra lista

List<int> nuevaLista = [12,13,14,15,16,17,18,19,20];

numeros.addAll(nuevaLista);

print(numeros);
  
}

