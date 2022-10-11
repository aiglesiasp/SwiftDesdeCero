import UIKit

var gokuName: String?
var gohanName: String? = "Gohan"

// MARK: - UNWRAPPED/DESEMPAQUETADO SEGURO
/* El unwrapped o desempaquetado seguro de valores de tipo opcional
 se realiza con el operador ? después del valor de tipo opcional.

 - Esto permite obtener el valor de la variable si no es nil sin provocar
 un error o fallo.

 - Ejemplo, para obtener el count de una variable: nombreVariableOpcional?.count
 en este caso devolvería un valor de tipo opcional Int?
 */
var gokuNameCharsCountOptional = gokuName?.count
