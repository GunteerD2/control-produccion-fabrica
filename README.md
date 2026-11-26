# control-produccion-fabrica
MiniProyecto02 - Control de producción de una fábrica en ensamblador MIPS (UCOM250)
# Control de producción de una fábrica

**Asignatura:** UCOM250 - Organización y Arquitectura de Computadoras  
**Integrantes:** Daniel Borbor, Alex Naranjo  
**Año:** 2026  
**Fecha:** 19 de noviembre de 2026

---

## Descripción

### Escenario

Una fábrica de componentes electrónicos requiere un programa que procese información de su producción diaria. El sistema registra inicialmente 24 unidades fabricadas y 40 unidades correspondientes a un segundo registro de producción. A partir de estos datos, se realizan operaciones de suma y resta para obtener valores intermedios relacionados con cantidades acumuladas y diferencias de producción. Algunas instrucciones utilizan resultados generados anteriormente, mientras otras modifican registros que ya han sido consultados.

Después de realizar las operaciones, el sistema verifica el resultado de una suma para establecer el estado del procesamiento. Si el valor calculado es distinto de cero, se almacena el código 303, que identifica un proceso de producción registrado; si el resultado es cero, se almacena cero. El programa utiliza una posición específica de memoria para conservar este estado y permitir su posterior consulta.

## Historial de versiones

| Versión | Fecha | Descripción |
|---------|-------|-------------|
| v1.0 | 19/11/2026 | Documentación inicial: descripción, análisis, implementación en MIPS (`proyecto03.s`) y capturas en Mipsy Web. |
| v1.1 | 26/11/2026 | Actualización de la documentación: formatos R, I y J, datapath y hazards del pipeline. |

### v1.1 – Cambios (26/11/2026)

**Agregado**
- Identificación de instrucciones por formato: R (`add`, `sub`), I (`lw`, `sw`) y J (`j`), con campos, registros, operación y efecto sobre el estado del procesador (Tabla 2).
- Descripción de los componentes del datapath: PC, memoria de instrucciones, banco de registros, ALU, memoria de datos, multiplexores y unidad de control.
- Análisis de dependencias del pipeline de 5 etapas (Tabla 3), con 14 casos:
  - Datos (RAW), incluido el load-use de `lw` → `add`.
  - Nombre: WAR sobre `$t2` y WAW sobre `$t6`.
  - Control: `beq` y `j`.

**Corregido**
- Fila 8 de hazards (`addi $t1` → `sw`): el forwarding del dato es EX→EX, con MEM/WB→MEM como alternativa según el diseño.
- Columna "Operación requerida" renombrada a "Registros fuente / destino".
- Título "Identificación…", párrafos vacíos y anchos de tabla.


### Referencias utilizadas

1. Hennessy, J. L., & Patterson, D. A. (2017). *Computer architecture: A quantitative approach* (6th ed.). Morgan Kaufmann.

2. insou22. (n.d.). *mipsy: A MIPS32 emulator, written in Rust*. GitHub. https://github.com/insou22/mipsy

3. Patterson, D. A., & Hennessy, J. L. (2013). *Computer organization and design: The hardware/software interface* (5th ed.). Morgan Kaufmann.

4. School of Computer Science and Engineering, University of New South Wales. (n.d.). *MIPS instruction set*. https://cgi.cse.unsw.edu.au/~cs1521/26T1/resources/mips-guide.html



6. Tanenbaum, A. S., & Austin, T. (2012). *Structured computer organization* (6th ed.). Pearson.
