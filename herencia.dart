class Animal {
  //Atributos
    String nombre;
    int edad;
  
  //Constructor
    Animal({required this.nombre, required this.edad});

  //Funciones
      void mostrarInformacion() {
    print('--- Información de Animal (desde Animal) ---');
    print('Nombre: $nombre');
    print('Edad: $edad años');
    print('------------------------------------------');
    } //Fin función mostrar información

      void hacerSonido() {
    print('$nombre hace un sonido genérico');
    }//Fin función hacer sonido
  
} // Fin de la clase Animal

// 'extends' indica Herencia: Perro adquiere todas las características de Animal

// Clase Perro con herencia Animal
class Perro extends Animal {
    //Atributo
     String raza;

      // Constructor:
    // 1. Recibe nombre, edad y raza.
    // 2. 'this.raza' se asigna a la propiedad de Perro.
    // 3. ': super(...)' envía el nombre y edad al constructor del padre (Animal).

    
  // Construcción clase Perro
  Perro({
    required String nombre,
    required int edad,
    required this.raza
    }) : super(nombre: nombre, edad: edad);

  // @override indica que estamos reemplazando el comportamiento original 
  @override 
  
    void hacerSonido() {
    print('$nombre dice: ¡Guau guau! 🐕');
    } //Fin función hacer sonido
  
  
    // Método exclusivo de Perro (Animal no tiene esto)
      void morder() {
    print('$nombre está mordiendo un hueso 🦴');
    }//Fin función Morder

  @override 
    void mostrarInformacion() {
    print('=== Información de Perro (desde Perro) ===');
    // super.metodo() llama a la versión original de la clase padre

    super.mostrarInformacion(); // 
    print('Raza: $raza');
    print('==========================================');
    } //Fin función Mostrar información

}


void main() {
    print('--- Demostrando un Animal genérico (Gato) ---');
    
    Animal gato = Animal(nombre: 'peter', edad: 15);
    gato.mostrarInformacion();
    gato.hacerSonido();
    print ('\n--- Demostrando Herencia con un Perro ---');
    
    Perro perro = Perro(nombre: 'Tobi', edad: 3, raza: 'chiuas');
    // Aquí se ejecuta la versión de Perro, que internamente llama a la de Animal
    perro.mostrarInformacion();
    perro.hacerSonido(); // Ejecuta la versión modificada (ladra)
    perro.morder(); // Ejecuta el método exclusivo de Perro
} //Fin función Principal
