import Foundation

// === FUNCIONES Y CLOSURES (HIGHER-ORDER FUNCTIONS) EN SWIFT ===

// --- 1. Parámetros nombrados y Etiquetas argumentales ---
// En Swift, podemos definir nombres internos y extenos para los parámetros

func calcularDescuento(precioBase precio: Double, porcentaje: Double = 10.0) -> Double {
    let descuento = precio * (porcentaje / 100.0)
    return precio - descuento
}

print("--- Funciones con Etiquetas ---")
print("Precio final (10% por defecto): \(calcularDescuento(precioBase: 100.0))")
print("Precio final (20% descuento): \(calcularDescuento(precioBase: 100.0, porcentaje: 20.0))")

// --- 2. Closures (Funciones anónimas / Lambas) ---
let multiplicar = { (a:Int, b:Int) -> Int in
    return a * b
}

print("\n--- Closures  basicos---")
print("Resultado multiplicación: \(multiplicar(4, 5))")

// --- 3. Funciones de Orden Superior (Map - Filter - Reduce) ---
let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Map: Transformar cada elemento del array
let cuadrados = numeros.map { $0 * $0 }

//Filter: Filtrar elementos según una condición
let pares = numeros.filter { $0 % 2 == 0 }

// Reduce: Combinar todos los elementos en un solo valor
let sumaTotal = numeros.reduce(0) { $0 + $1 }

print("\n--- Higher-Order Functions ---")
print("Números originales: \(numeros)")
print("Cuadrados: (Map) \(cuadrados)")
print("Solo Pares (Filter): \(pares)")
print("Suma Total (Reduce): \(sumaTotal)")