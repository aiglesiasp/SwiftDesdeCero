import UIKit

var gokuName: String?
var gohanName: String? = "Gohan"

// MARK: - UNWRAPPED/DESEMPAQUETADO IF LET
/* El unwrapped o desempaquetado seguro de valores de tipo opcional
 se puede realizar también con una estructura conocida como IF LET.

 - Esto permite obtener el valor de la variable si no es nil sin provocar
 un error o fallo y asignarla a otra variable que ya no será de tipo opcional.

 - Ejemplo, para obtener el count de una variable:
    if let variableNombre = variableOpcional?.count  {
        Solo Dentro del if podremos usar la nueva constante variableNombre que ya
        no será de tipo opcional
    }
 */
if let gokuNameCount = gokuName?.count {
    print(gokuNameCount)
}else{
    print("Es NIL")
}
