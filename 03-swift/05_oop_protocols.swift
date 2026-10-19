import Foundation

// === POO, ESTRUCTURAS, CLASES Y PROTOCOLOS EN SWIFT ===

// --- 1. Definición de Protocolos (Interfaces) ---
protocol Pagable {
    var totalAPagar: Double { get }
    func procesarPago() -> String
}

// --- 2. Struct (Value Type - Copia por valor) ---
struct Producto: Pagable {
    let nombre: String
    let precioUnitario: Double
    let cantidad: Int
    
    // Propiedad calculada requerida por el protocolo
    var totalAPagar: Double {
        return precioUnitario * Double(cantidad)
    }
    
    func procesarPago() -> String {
        return "Pago procesado para producto '\(nombre)' por un total de $\(totalAPagar)"
    }
}

// --- 3. Class (Reference Type - Referencia en memoria) ---
class Suscripcion: Pagable {
    let servicio: String
    var precioMensual: Double
    var meses: Int
    
    init(servicio: String, precioMensual: Double, meses: Int) {
        self.servicio = servicio
        self.precioMensual = precioMensual
        self.meses = meses
    }
    
    var totalAPagar: Double {
        return precioMensual * Double(meses)
    }
    
    func procesarPago() -> String {
        return "Suscripción a '\(servicio)' pagada por \(meses) mes(es): $\(totalAPagar)"
    }
}

// --- 4. Demostración de Polimorfismo y Value vs Reference Type ---
print("--- Polimorfismo con Protocolos ---")
let itemsPagables: [Pagable] = [
    Producto(nombre: "Teclado Mecánico", precioUnitario: 45.0, cantidad: 2),
    Suscripcion(servicio: "Cloud Hosting", precioMensual: 15.0, meses: 6)
]

for item in itemsPagables {
    print(item.procesarPago())
}

print("\n--- Demostración: Struct (Value) vs Class (Reference) ---")
// Copia de Struct
var productoOriginal = Producto(nombre: "Mouse", precioUnitario: 25.0, cantidad: 1)
var productoCopia = productoOriginal
productoCopia = Producto(nombre: "Mouse Gamer", precioUnitario: 35.0, cantidad: 1)
print("Struct Original: \(productoOriginal.nombre) | Copia: \(productoCopia.nombre)")

// Referencia de Clase
let sub1 = Suscripcion(servicio: "Streaming", precioMensual: 10.0, meses: 1)
let sub2 = sub1 // Ambas variables apuntan al mismo objeto en memoria
sub2.meses = 12
print("Class Sub1 Meses: \(sub1.meses) | Sub2 Meses: \(sub2.meses)")