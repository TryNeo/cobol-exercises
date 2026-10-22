<div align="center">

# ◈ Hola COBOL

### COB-001 · Básico · COBOL

**Un reto. Un repositorio. Una habilidad más.**

![Lenguaje](https://img.shields.io/badge/COBOL-GnuCOBOL-527A3C?style=for-the-badge)
![Estado](https://img.shields.io/badge/estado-en_desarrollo-E6B450?style=for-the-badge)

[El reto](#el-reto) · [Ejecutar](#ejecutar) 

</div>

---

## El reto

Escribe un programa que muestre exactamente HOLA COBOL y termine con código 0. Identifica las divisiones y el PROGRAM-ID.

Ruta: **Primeros programas**.

> Proyecto de práctica personal. Los datos son ficticios.

## Lo que practico

- Primeros programas.
- Validación de entradas y tratamiento explícito de errores.
- Separación de la lógica, entrada/salida y documentación.

## Ejemplo de uso

**Entrada de referencia**

```text
Sin entrada
```

**Resultado esperado**

```text
HOLA COBOL
```

El ejemplo describe los datos y resultados; adapta su disposición a la interfaz de tu programa y documenta el formato real.

## Estructura propuesta

| Ruta | Contenido |
| --- | --- |
| `src/main.cob` | Implementación del ejercicio |
| `tests/casos.md` | Entradas, resultados esperados y resultados observados |
| `data/` | Datos ficticios de prueba, si se necesitan |
| `docs/` | Decisiones y capturas opcionales |
| `README.md` | Esta documentación |

> Esta tabla propone una estructura: crea los archivos que uses y elimina las filas que no correspondan. No incluye una solución ya implementada.

## Requisitos

- GnuCOBOL instalado y `cobc` disponible.
- OpenCobolIDE como editor opcional, configurado con tu compilador y formato libre.
- Versión comprobada: **[completar con `cobc -V`]**.
- Sistema operativo comprobado: **[completar]**.

## Ejecutar

Desde la raíz del repositorio, crea `bin` si no existe y compila:

```sh
cobc -V
mkdir bin
cobc -x -free -Wall -o bin/main src/main.cob
# Windows: .\bin\main.exe
# Linux/macOS: ./bin/main
```

`-x` genera un ejecutable, `-free` selecciona formato libre y `-Wall` activa advertencias. Si el reto contiene subprogramas, añade sus fuentes a la compilación o documenta su carga como módulos. Para archivos indexados, registra el backend disponible de tu compilador.

En OpenCobolIDE: abre el fuente, verifica la ruta del compilador en preferencias, selecciona formato libre, compila y ejecuta. Documenta el directorio de trabajo si usas archivos.

## Autor y licencia

Autor: **[https://github.com/TryNeo/]**.

---

<div align="center">
Hecho para aprender, entender y seguir construyendo.
</div>
