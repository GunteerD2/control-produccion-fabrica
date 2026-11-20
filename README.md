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

---

### Referencias utilizadas

1. Hennessy, J. L., & Patterson, D. A. (2017). *Computer architecture: A quantitative approach* (6th ed.). Morgan Kaufmann.

2. insou22. (n.d.). *mipsy: A MIPS32 emulator, written in Rust*. GitHub. https://github.com/insou22/mipsy

3. Patterson, D. A., & Hennessy, J. L. (2013). *Computer organization and design: The hardware/software interface* (5th ed.). Morgan Kaufmann.

4. School of Computer Science and Engineering, University of New South Wales. (n.d.). *MIPS instruction set*. https://cgi.cse.unsw.edu.au/~cs1521/26T1/resources/mips-guide.html

5. School of Computer Science and Engineering, University of New South Wales. (n.d.). *Mipsy Web*. https://cgi.cse.unsw.edu.au/~cs1521/mipsy/

6. Tanenbaum, A. S., & Austin, T. (2012). *Structured computer organization* (6th ed.). Pearson.
