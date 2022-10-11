import UIKit

// MARK: - CONTROLES CONDICIONALES -
/* Los controles de lógica condicionales nos permiten ejecutar
 diferentes bloques de código en función a ciertas condiciones,
 valores o comparaciones.

 - Existen dos controles principales los IF y los SWITCH.

 - Siempre que sea posible, por claridad se debe utilizar una
 sentencia Switch.
 */
// MARK: - IF
/* Gracias a una sentencia IF podremos aplicar diferentes lógicas
 en nuestro código.

 - En una sentencia IF se podrán añadir tantos IF ELSE como se necesiten
 para comprobar qué condición se cumple.

 - Únicamente podrá haber un ELSE que se ejecutará siempre que no se hayan
 cumplido las condiciones anteriores.

 - Ejemplo declaración IF:
     SI condición {
        código a ejecutar
     } SINO SI otraCondición {
        código a ejecutar
     } SINO {
       código a ejecutar
     }
 */
let gokuPower = 95
if gokuPower > 95 {
    print("Poder extraordinario")
} else if gokuPower < 95 {
    print("Poder insuficiente")
} else {
    print("Poder de Saiyan")
}
