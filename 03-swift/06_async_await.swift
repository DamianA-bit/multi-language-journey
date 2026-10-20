import Foundation

// === CONCURRENCIA MODERNA EN SWIFT (ASYNC / AWAUT) ===

// --- 1. Función Asíncronica simuladoi petición de datos ---
func obtenerDatosServidor(id: Int) async throws -> String {
    // Simula retardo en red
    try await Task.sleep(nanoseconds: 500_000_000) // 0.5 segs
    if id <= 0 {
        enum ErrorRed: Error { case idInvalido }
        throw ErrorRed.idInvalido
    }
    return "Datos recibidos para la entidad #\(id)"
}

// --- 2. Procesamiento concurrente con Async Task ---
func ejecutarProcesamiento() async {
    print("--- Inicioo de Tareas Asíncronicas ---")

    do {
        print("Solicitando datos del Servidor...")
        let resultado = try await obtenerDatosServidor(id: 42)
        print("Petición 1 Exitosa: \(resultado)")

        // Petición asíncronica dentro de try-catch
        let   resultado2 = try await obtenerDatosServidor(id: 101)
        print("Petición 2 Exitosa: \(resultado2)")
    } catch {
        print("Error en petición aíncronica: \(error)")
    }
    print("--- Fin de Tareas Asíncronicas ---")
}

// --- 3. Puntos de entrada principal para código asíncronico en scripts ---
// En scripts o ejecutables CLI de Swift sin @main, usar Task y bloque de espera.
let semaforo = DispatchSemaphore(value: 0)

Task {
    await ejecutarProcesamiento()
    semaforo.signal()
}

semaforo.wait()