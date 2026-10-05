# Módulo 02: Python

Este módulo cubre los fundamentos básicos, estructuras de datos escenciales y sintaxis principal del lengiaje **Python** (versión 3.12+).

---

## Conceptos Cubiertos

### 1. Variables y Tipos de Datos Primitivos.
- **Inferencia de tipos y tipado dinámico**: Python no requiere la dlecarración explícita de tipos de datos.
- **Tipos básicos**:
    - `Int`: Números enteros.
    - `Float`: Números con coma flotante.
    - `Str`: Cadenas de texto.
    - `Bool`: Valores boolenos (`True` / `False`).
    - `None`: Ausencia de valor o valor nulo (`NoneType`).
- **Constantes**: Definidas por convención usando nombres en `MAYÚSCULAS`.

### 2. Formato de Cadenas (f-strings).
- Uso del prefijo `f"..."` para interpolar variables y evaluar expresiones directamente dentro de textos.

### 3. Colecciones Estructuradas
- **Listas (`List`)**: Colecciones ordenadas y mutables.
- **Tuplas (`Tuple`)**: Colecciones ordenadas e inmutables.
- **Sets (`Set`)**: Colecciones no ordenadas sin elementos duplicados.
- **Diccionarios (`Dict`)**: Estructuras de pares clave-valor.

## 4. Flujo de Control y Funciones.
- Estructuras condicionales mediante `IF`, `ELIF` y `ELSE`.
- Definición de funciones usando la palabra clave `DEF`.
- Expresiones anónimas o compactas con `LAMBDA`.

### 5. Programación Orientada a Objetos (POO).
- Defiición de clases con `class`.
- Método constructor `__init__` e instanciación de objetos.

---

## Ejecución de Scripts.

Para  ejecutar los programas de este módulo desde la raíz del repositorio, utiliza PowerShell:

```powershell
# Ejecución del punto de entrada básico.
python 02-python/00_print.py

# Ejecución del la guía de sintaxis y variables.
python 02-python/01_variables.py

-

## **3. Registrar la documentación en Git**
Una vez guardado el archivo, ejecuta los siguientes comandos para hacer el commit y subir los cambios a GitHub:

```powershell
git add 02-python/README.md
git commit -m "docs(python): create README with module summary and execution guide"
git push