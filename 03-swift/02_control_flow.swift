import Foundation

// === ESTRUCTURAS DE CONTROL Y MANEJO DE OPCIONALES EN SWIFT. ===
// --- 1. Desempaquetado Seguro de Opcionales (Optional Binding). ---
let respuestaServidor: String? = "Respuesta del servidor" // Simulando una respuesta del servidor que puede ser nula.

// Usando 'if let': Se usa para extraer el valor de forma segura solo dentro del bloque 'if'.
if let estado = respuestaServidor {
    print("--- Optionals ---")
    print("Respuesta recibida correctamente: \(estado)")
} else {
    print("Respuesta nula (nil)")
}
// 'guard let': Salida temprana (Early Exit). Exige 'Return' 'Break' 'Throw'
func procesarUsuario(nombre: String?) {
    guard let nombreValido = nombre else {
        print("Error, el nombre es nulo.")
        return
    }
    print("Procesando usuario: \(nombreValido)")
}

print("\n--- Guard Let (Early Exit) ---")
procesarUsuario(nombre: "Bruno") // Llamada con un nombre válido.
procesarUsuario(nombre: nil) // Llamada con un nombre nulo.

// --- 2. Swift Avanzado y Rangos ---
let calificacion: Int = 85

print("\n--- Switch con Rangos ---")
switch calificacion {
    case 0..<60:
    print("Reprobado")
    case 60..<80:
    print("Aprobado")
    case 80..<100:
    print("Sobresaliente")
    default:
    print("Calificación no válida")
}

// --- 3. Bucles (For-In, Repeat-While) ---
print("\n--- Bucles For-In ---")
for i in 1...3  {
    print("Iteración \(i)")
}

let frutas = ["Manzana", "Banana", "Uva"]
for (index, fruta) in frutas.enumerated() {
    print("Fruta \(index + 1): \(fruta)")
}