import Foundation

// === SINTAXIS Y CONCEPTOS FUNDAMENTALES DE SWIFT ===

// --- Variables y Constantes ---
// 'let': Se utiliza para declarar constantes, es decir, valores que no cambiarán durante la ejecución del programa. Una vez asignado un valor a una constante, no se puede modificar.
let usuario: String = "Ramiro"
var edad: Int = 40
let precio: Double = 19.99
let pi: Double = 3.14159
let ciudadInicial: String? = nil // Variable opcional: que puede contener un valor o ser nula.
let esActivo: Bool = true

print("--- Tipos y Variables ---")
print("Usuario: \(usuario) | Edad: \(edad)")
print("Precio: \(precio) | Pi: \(pi)")
print("Ciudad Inicial (Nil): \(ciudadInicial ?? "No especificada")")
print("Es Activo: \(esActivo)")

// --- Colecciones ---
// Arrelos (Arrays): Colecciones ordenadas de elementos del mismo tipo.
var frutas: [String] = ["Manzana", "Banana", "Cereza", "Manzana"]
// Conjuntos (Sets): Colecciones no ordenadas de elementos únicos.
let paises: Set<String> = ["Argentina", "Brasil", "Chile", "Uruguay"]
// Diccionarios (Dictionaries): Colecciones de pares clave-valor.
var perfil: [String: Any] = ["nombre": "Ramiro", "edad": 40, "activo": true]

print("\n--- Colecciones ---")
print("Array (List): \(frutas)")
print("Set (Únicos): \(paises)")
print("Diccionario (Dict): \(perfil)")

// --- Flujo de Control ---
print("\n--- Flujo de Control ---")
if esActivo && edad >= 18 {
    print("Estado: Activo y mayor de edad")
} else {
    print("Estado: Inactivo o menor de edad")
}

// --- Funciones ---
func saludar(persona: String) -> String {
    return "¡Hola, \(persona)! Bienvenido a Swift."
}

print("\n--- Funciones ---")
print(saludar(persona: usuario))

// --- Estructuras (Structs) ---
struct Persona {
    var nombre: String
    var edad: Int
    
    func presentarse() {
        print("¡Hola, soy \(nombre) y tengo \(edad) años!")
    }
}

print("\n--- Programación Orientada a Objetos / Structs ---")
let persona1 = Persona(nombre: usuario, edad: edad)
persona1.presentarse()