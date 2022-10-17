import UIKit

var gokuName: String?
var gohanName: String? = "Gohan"


// MARK: - VALOR POR DEFECTO
/* Se puede dar un valor por defecto en caso de que el valor de la variable sea nil,
 de esta manera, si el valor opcional fuera nil se devolvería el valor por defecto.

 - Para ello se utiliza el operador ?? que indica que si la expresión de la izquierda
 del operador es nil devuelve el valor que pongamos a la derecha del operador.

 - Ejemplo: nombreVariableOpcional?.count ?? 0 en este caso devolvería un valor de
 tipo no opcional Int
 */
var gokuNameCharsCount = gokuName?.count ?? 0
