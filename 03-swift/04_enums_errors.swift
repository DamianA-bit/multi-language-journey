import Foundation

// === ENUMS AVANZADOS Y MANEJO DE ERRORES EN SWIFT ===

// --- 1. Definición de Errores ---
// En Swift los errores adoptan la forma de enums que conforman el protocolo Error
enum ErrorCuenta: Error {
    case saldoInsuficiente(requerido: Double)
    case cuentaInactiva
    case montoInvalido
}

// --- 2. Enums con Valores Asociados ---
enum EstadoTransaccion {
    case exito(idTransaccion: String)
    case fallido(razon: String)
    case pendiente
}

// --- 3. Función que lanza errores (throws) ---
struct CuentaBancaria {
    var saldo: Double
    var activa: Bool
    
    mutating func retirar(monto: Double) throws -> EstadoTransaccion {
        guard activa else {
            throw ErrorCuenta.cuentaInactiva
        }
        guard monto > 0 else {
            throw ErrorCuenta.montoInvalido
        }
        guard saldo >= monto else {
            throw ErrorCuenta.saldoInsuficiente(requerido: monto - saldo)
        }
        
        saldo -= monto
        return .exito(idTransaccion: "TX-\(Int.random(in: 1000...9999))")
    }
}

// --- 4. Manejo de Errores con do-catch ---
print("--- Manejo de Errores (do-catch) ---")
var miCuenta = CuentaBancaria(saldo: 100.0, activa: true)

do {
    let resultado = try miCuenta.retirar(monto: 150.0)
    print("Resultado: \(resultado)")
} catch ErrorCuenta.saldoInsuficiente(let faltante) {
    print("Error: Saldo insuficiente. Te faltan $\(faltante)")
} catch ErrorCuenta.cuentaInactiva {
    print("Error: La cuenta se encuentra inactiva.")
} catch ErrorCuenta.montoInvalido {
    print("Error: El monto a retirar debe ser mayor a 0.")
} catch {
    print("Error desconocido: \(error)")
}

// --- 5. Uso de try? (Manejo opcional) ---
print("\n--- Intento Seguro con try? ---")
// try? convierte el resultado en un Opcional (nil si falla)
if let resultadoExitoso = try? miCuenta.retirar(monto: 50.0) {
    switch resultadoExitoso {
    case .exito(let id):
        print("Transacción exitosa con ID: \(id)")
        print("Nuevo saldo: $\(miCuenta.saldo)")
    case .fallido(let razon):
        print("Transacción fallida: \(razon)")
    case .pendiente:
        print("Transacción pendiente")
    }
} else {
    print("La operación falló y retornó nil")
}