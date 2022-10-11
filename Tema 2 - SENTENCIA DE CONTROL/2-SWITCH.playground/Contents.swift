import UIKit

// MARK: - CONTROLES CONDICIONALES -
/* Los controles de lógica condicionales nos permiten ejecutar
 diferentes bloques de código en función a ciertas condiciones,
 valores o comparaciones.

 - Existen dos controles principales los IF y los SWITCH.

 - Siempre que sea posible, por claridad se debe utilizar una
 sentencia Switch.
 */

// MARK: - SWITCH
/* Gracias a una sentencia SWITCH podremos aplicar diferentes lógicas
 en nuestro código.

 - En una sentencia SWITCH se podrán añadir tantos CASE como se necesiten
 para comprobar qué condición se cumple.

 - Únicamente podrá haber un DEFAULT que se ejecutará siempre que no se hayan
 cumplido las condiciones anteriores.

 - Ejemplo declaración SWITCH:
    switch condición {
        case valorCondición: código a ejecutar
        case valorCondición: código a ejecutar
        default: código a ejecutar
    }
 */
let gohanPower = 100
switch gohanPower {
    case 95: print("Poder de Saiyan")
    default: print("Poder indeterminado")
}

/* En una sentencia SWITCH se podrán añadir más condiciones en los cases
 para comprobar si un valor está dentro de un rago, es mayor que otro valor, etc

 En este ejemplo comparamos el valor de gohanPower que se extrae a la constante power
 y en cada case se compara si el poder es > 95 o < 95 respectivamente.
 */

switch gohanPower {
    case let power where power > 95: print("Poder extraordinario de \(gohanPower)")
    case let power where power < 95: print("Poder insuficiente")
    default: print("Poder de Saiyan")
}
