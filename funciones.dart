void main(){
saludar();// llamando a la funcion
print('Función pasando parametros');
suma(5,3); // llamando a la función suma con parametros
crearUsuario(nombre:'Aida',edad:42,ciudad: 'Chihuahua');

int resultado=resta(5,4);  
print('La resta es: $resultado');
  
print('Función flecha');  
int m =multiplica(8,9);
print('La multiplicación es: $m');  
  
  
  
}//función principal

void saludar(){
print("hola mundo cruel CETis 87");
}// fin de saludar

void suma (int a,int b){
int suma=a+b;
  print('La suma $a + $b es $suma');
 } // fin función suma

void crearUsuario({required String nombre,required int edad, String ciudad='Delicias'}){
  print("Creando usuario");
  print("Nombre: $nombre");
  print("Edad: $edad");
  print("Ciudad: $ciudad");
}


int resta(int x, int y){
  int r=x-y;
  return r;
}

int multiplica(int d1, int d2)=> d1*d2;
