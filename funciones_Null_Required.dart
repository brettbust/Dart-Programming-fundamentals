void main(){
  
  saludo('Brett');
}

saludo(String nombre){
    print('Hola $nombre');
  }

/*******************************************/

  void main(){
  
  final nombre = 'Brett';
  
  saludo(nombre,'Holaaaa');
}

saludo(String nombre, [String mensaje = 'Hi']){
    print('$mensaje $nombre');
  }

  //si no enviamos el parametro mensaje, se mostrara el valor por defecto

  //el parametro nombre es obligatorio

/*******************************************/

//en el caso de que queramos que el parametro mensaje sea obligatorio, debemos quitarle el corchete

//en el caso de que queramos detectar valores nulos en los parametros, debemos agregar el signo de interrogacion

  final String? nombre = null;
  
  saludo(nombre);


saludo(String? nombre, [String mensaje = 'Hi']){
    print('$mensaje $nombre');
  }

/*******************************************/

//en este ejemplo la funcion me imprime Hello null porque no enviamos el parametro nombre

void main(){
  
  final nombre = 'Brett';
  
  saludar2(mensaje: 'Hello');
  
}

 void saludar2({String? nombre, String? mensaje}) {
  print('$mensaje $nombre');
}


//Para que esto no ocurra, debemos agregar el required


void main(){
  
  final nombre = 'Brett';
  
  saludar2(nombre : nombre, mensaje: 'Soy un mensaje requerido, Hola ');
  
}

//siempre que alguien quiera enviar la función va a tener que enviar el nombre y el mensaje obligatoriamente en este caso

 void saludar2({String nombre, String? mensaje}) {
  print('$mensaje $nombre');
}
  


