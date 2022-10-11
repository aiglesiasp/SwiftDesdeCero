import UIKit

// MARK: - DE FUNCIÓN A CLOSURE
/* Como convertir una función en un Closure, en este punto
 se podrá comprender por qué un Closure es la simplificación
 abstracción de una función.
 */

// 0.- Paso inicial, declaración de función
func convertToSaiyan(power: Float) -> Float {
    let saiyanPower = power * 20
    return saiyanPower
}

/* 1.- Eliminar la palabra clave func

 convertToSaiyan(power: Float = 0) -> Float {
    let saiyanPower = power * 20
    return saiyanPower
 }
 */

/* 2.- Eliminar el nombre de la función

 (power: Float) -> Float {
    let saiyanPower = power * 20
    return saiyanPower
 }
 */

/* 3.- Eliminar el nombre de los parámetros
 de entrada de la función

 (Float) -> Float {
    let saiyanPower = power * 20
    return saiyanPower
 }
 */

/* 4.- Eliminar el código a ejecutar dentro de
 la función. En este punto se obtiene la declaración
 del Closure.

 (Float) -> Float
 */

/* 5.- Separar la implementación de la función. Se consigue
 la implementación del Closure con el parámetro de entrada.

 { power in
    let saiyanPower = power * 20
    return saiyanPower
 }
 */
