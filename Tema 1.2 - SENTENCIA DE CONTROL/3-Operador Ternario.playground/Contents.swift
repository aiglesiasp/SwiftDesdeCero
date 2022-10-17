import UIKit

// MARK: - CONTROLES CONDICIONALES -
/* Los controles de lógica condicionales nos permiten ejecutar
 diferentes bloques de código en función a ciertas condiciones,
 valores o comparaciones.

 - Existen dos controles principales los IF y los SWITCH.

 - Siempre que sea posible, por claridad se debe utilizar una
 sentencia Switch.
 */

// MARK: - OPERADOR TERNARIO
/* El conocido como operador ternario, existente en múltiples lenguajes de programación
 es una simplificación de una sentencia IF sencilla, en este caso se comprueba una condición
 y si se cumple se devuelve un valor y si no se devuelve otro.

 - Ejemplo: CONDICIÓN_LÓGICA ?  (TRUE)CÓDIGO_EJECUTAR : (FALSE)CÓDIGO_EJECUTAR
 */
let freezerIsVillain = true
let freezerCondition = freezerIsVillain ? "Freezer is a Villain" : "Freezer isn't a Villain"
print(freezerCondition)
