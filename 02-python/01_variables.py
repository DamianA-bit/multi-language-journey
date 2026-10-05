# 01_variables.py | Sintaxis y Conceptos  fundamentales de Python.

# 1. Imports.
import math

# 2. Tipos de Datos y Variables (Tipado Dinámico).

edad = 25  # Variable de tipo entero (int).
precio = 19.99  # Variable de tipo flotante (float).
nombre = "Juan"  # Variable de tipo cadena (str).
es_desarrollador = True  # Variable de tipo booleano (bool).
ciudad = None  # Variable de tipo NoneType (None).

# Constantes (Por convención en Python se usan MAYÚSCULAS, aunque técnicamente son mutables).

PI = math.pi  # Constante de tipo flotante (float).

print("=== SINTAXIS Y CONCEPTOS FUNDAMENTALES DE PYTHON\n ===")
print("--- Tipos y Variables ---")
print(f"Usuario: {nombre} | Edad: {edad}")
print(f"Precio: {precio} | PI: {PI}")
print(f"Ciudad Inicial (None): {ciudad}")
print(f"¿El Usuario es Desarrollador?: {es_desarrollador}\n")

# 3. Colecciones: LISTAS - TUPLAS - SETS - DICCIONARIOS.
# Listas (List): Colección ordenada y mutable de elementos.

tecnologias = ["Python", "JavaScript", "Dart", "Python"]

# Tuplas (Tuple): Colección ordenada e inmutable de elementos.
coordenadas = (10.0, -20.0)

# Sets (Set): Colección desordenada y mutable de elementos únicos.
paises = {"Uruguay", "Argentina", "Chile", "Uruguay"}  # Python eliminará automáticamente el duplicado.

# Diccionarios (Dict): Colección desordenada y mutable de pares clave-valor.
perfil = {
    "username": "Juan",
    "nivel": 25,
    "ciudad": "Montevideo",
    "es_desarrollador": True
}

print("--- Colecciones ---")
print(f"Lista (list): {tecnologias}")
print(f"Tupla (tuple - inmutable): {coordenadas}")
print(f"Set (set - sin duplicados): {paises}")
print(f"Diccionario (dict): {perfil['username']} (Nivel: {perfil['nivel']})\n")

# 4. Flujo de Control (IF - ELIF - ELSE).
print("--- Flujo de Control ---")
if edad >=18 and es_desarrollador:
    print("Estado: Desarrollador Adulto")
elif edad < 18:
    print("Estado: Desarrollador Menor de Edad")
else:
    print("Estado: Edad Desconocida")
print()

# 5. Funciones.
def saludar(nombre_usuario):
    print(f"¡Hola, {nombre_usuario}! Bienvenido a Python.")
    
# Función con expresión Lambda (función anónima).
sumar = lambda a, b: a + b

print("--- Funciones ---")
saludar(nombre)
resultado_suma = sumar(5, 10)
print(f"Resultado de la suma (5 + 10): {resultado_suma}\n")

# 6. Programación Orientada a Objetos (Clases).
class Persona:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def presentarse(self):
        print(f"Hola, soy {self.nombre} y tengo {self.edad} años.")

print("--- Programación Orientada a Objetos ---")
persona1 = Persona("Juan", 25)
persona1.presentarse()