# Módulo 03: Swift — Multi-Language Journey

Este módulo cubre la sintaxis esencial, estructuras de control, opcionales, programación funcional, orientada a objetos y concurrencia moderna en **Swift (versión 6.x)** ejecutado sobre un entorno Windows 11.

---

## 🛠️ Entorno de Ejecución (Windows 11)

Debido a las limitaciones del motor JIT (`swift script.swift`) en Windows, el flujo de compilación y ejecución estándar utilizado en este módulo requiere compilar a un binario `.exe` utilizando `swiftc` y limpiar automáticamente los artefactos de compilación (`.lib`, `.exp`, `.exe`):

```powershell
swiftc 03-swift/<archivo>.swift -o 03-swift/temp.exe; .\03-swift\temp.exe; Remove-Item 03-swift\temp.* -ErrorAction SilentlyContinue