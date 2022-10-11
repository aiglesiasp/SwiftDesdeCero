import UIKit

var gokuName: String?
var gohanName: String? = "Gohan"

// MARK: - UNWRAPPED/DESEMPAQUETADO GUARD LET
/* El unwrapped o desempaquetado seguro de valores de tipo opcional
 se puede realizar también con una estructura conocida como IF LET.

 - Esto permite obtener el valor de la variable si no es nil sin provocar
 un error o fallo y asignarla a otra variable que ya no será de tipo opcional.

 - Ejemplo, para obtener el count de una variable:
    guard let variableNombre = variableOpcional?.count else {
        Dentro del guard indica que variableOpcional es nil y
        no continuaremos ejecutando este bloque de código

        return
    }

    En este caso, si no entra al guard indica que variableOpcional no es nil
    y desde este punto se podrá utilizar variableNombre con el valor desempaquetado
    y ya no será de tipo opcional.

    ** SOLO SE PUEDE UTILIZAR DENTRO DE FUNCIONES en playground
    guard let gokuNameCount = gokuName?.count else {
        print("Es NIL")
        return
    }

    print(gokuNameCount)
 */
