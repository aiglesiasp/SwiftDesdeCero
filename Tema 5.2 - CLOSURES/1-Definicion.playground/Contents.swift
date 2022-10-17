import UIKit

// MARK: - CLOSURE & PROGRAMACIÓN FUNCIONAL -
/* Los closures son bloques de funcionalidad que se pueden pasar y usar
 en diferentes partes del código. Un closure hay que entenderlo como la
 simplificación de una función.

 - Los closures en Swift son similares a los Blocks en Objective-C y a
 las lambdas en Kotlin.

 - Los closures pueden capturar y almacenar referencias a cualquier constante
 y variable del contexto en el que están definidas.

 - Definición de closure:
 { (TipoDatoEntrada, TipoDatoEntrada, etc) -> TipoDatoDevuelto in
    código a ejecutar
 }
 */

// MARK: - DECLARACIÓN CLOSURE
/* Los Closure se declaran con el siguiente formato:

 (TipoDatoEntrada, TipoDatoEntrada, etc) -> TipoDatoDevuelto

                          Declaración          Implementación */
let calculateSaiyanPower: (Float) -> Float = { power in
    power * 20
}
// Ejecutar el closure como si se llamara a una función
print("Calculate Saiyan Power closure: \(calculateSaiyanPower(90))")
