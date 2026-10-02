/* 1. IMPORTS.
  *    Importación de librerias del sistema o paquetes externos.
*/
import 'dart:math';

/* 2. Enumerados (enum).
  *    Definición de un tipo con un conjunto finito de valores constantes.
*/
enum EstadoUsuario { activo, inactivo, pendiente }

void main() {
  print('=== SINTAXIS Y CONCEPTOS CLAVE DE DART ===\n');

  /* 3. Tipos de Datos y Variables. */

  int edad = 27;
  double precio = 20.00;
  String nombre = 'Bob';
  bool esDesarrollador = true;

  // Inferencia de Tipos, Inmutabilidad y Null Safety.
  var lenguaje = 'Dart';
  final DateTime fechaInicio = DateTime.now(); // 'final': Inmutable. Se asigna una sola vez en tiempo de ejecución.
  const double piValor = pi; // 'const': Inmutable en tiempo de compilación (valor fijo conocido desde antes).
  // Uso de la libreria Dart:math importada.
  String? ciudad; // Permite null por Null Safety.

  print('--- Tipos y Variables ---');
  print('Usuario: $nombre | Lenguaje: $lenguaje');
  print('Fecha de Inicio: $fechaInicio | Pi: $piValor');
  print('Ciudad Inicial (null): $ciudad');
  print('El precio a gastar es: $precio\n');

  /* 4. Colecciones: Listas, Sets y Mapas. */
  // Lista: (List): Ordenada y permite dupliados.

  List<String> tecnologias = ['Dart', 'Pthon', 'Java', 'Dart'];

  // Set: Colección de elementos únicos (elimina duplicados automáticamente).
  Set<String> paises = {'Brasil', 'Chile', 'México'};

  // Mapa (Maps): Estructura clave-valor.
  Map<String, dynamic> perfil = {
    'username': 'DamianA-bit',
    'nivel': 1,
    'activo': true,
  };
  print('--- Colecciones ---');
  print('Lista (List): $tecnologias');
  print('Conjunto (Set - sin duplicados): $paises');
  print(
    'Mapa (Map - Clave/Valor): ${perfil['username']} (Nivel: ${perfil['nivel']})\n',
  );

  /* 5. Flujo de Control (IF / ELSE IF / ELSE). */
  print('--- Control de Flujo (If / Else If / Else) ---');
  if (edad >= 10 && esDesarrollador) {
    print('Estado: Desarrollador mayor de edad.');
  } else if (edad < 18) {
    print('Estado: Desarrollador en formación.');
  } else {
    print('Estado: Condición no definida.');
  }
  print('');

  /* 6. Uso de Enumerados. */
  EstadoUsuario estadoActual = EstadoUsuario.activo;
  print('--- Enumerados (enum) ---');
  switch (estadoActual) {
    case EstadoUsuario.activo:
      print('El usuario está activo en la plataforma.');
      break;
    case EstadoUsuario.inactivo:
      print('El usuario está inactivo.');
      break;
    case EstadoUsuario.pendiente:
      print('El usuario está pendiente de aprobación.');
      break;
  }
  print('');

  /* 7. Uso de Funciones */
  print('--- Funciones ---');
  saludar(nombre);
  int resultadoSuma = sumar(5, 10);
  print('Resultado de la suma: $resultadoSuma\n');

  /* 8. Instanciación de Clases (POO). */
  print('--- Programación Orientada a Objetos (Clases) ---');
  Persona persona1 = Persona('Oscar', 30);
  persona1.presentarse();
}

/* 9. Definición de Funciones. */
void saludar(String nombreUsuario) {
  print('¡Hola, $nombreUsuario! Bienvenido a Dart.');
}

// Función con retorno implícito (Arrow Function).
int sumar(int a, int b) => a + b;

/* 10. Definición de Clases. */
class Persona {
  String nombre;
  int edad;
  // Constructor.
  Persona(this.nombre, this.edad);

  // Método.
  void presentarse() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }
}
