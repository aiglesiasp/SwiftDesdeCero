import UIKit

// MARK: VARIABLES COMPUTADAS
/* Una variable computada o autocalculada no almacena
 ningún valor. Éstas variables calculan el valor a
 devolver en base a otros parámetros.

 - Las variables computadas se pueden utilizar tanto
 en clases como en structs, enums, etc...

 - Declaración de una variable computada:

    var nombreVariable: TipoDato {
        << Código a ejectuar >>
        return valorDevuelto
    }

 - Por regla general, toda función que no reciba parámetros
 de entrada y devuelva un valor, debería convertirse a variable
 computada. Ejemplo pasar de función a variable computada:

 // Función
 func bootcampId() -> String {
    bootcamp.id
 }

 // Variable Computada
 var bootcampId: String {
    bootcamp.id
 }
 */



