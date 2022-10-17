import UIKit

var gokuName: String?
var gohanName: String? = "Gohan"
// MARK: - [NO RECOMENDADO] FORZAR UNWRAPPED/DESEMPAQUETADO [NO RECOMENDADO]
/* Se puede forzar el desempaquetado de un valor de tipo opcional, que, salvo en contadas
 ocasiones, nunca deberíamos utilizar. Los valores de tipo opcional se crearon para evitar
 crashes y errores indeseados en tiempo de ejecucción de nuestro programa o aplicaicón, si
 forzamos el desempaquetado perderemos esta valiosa funcionalidad.

 - El operador que se utiliza para ello es !

 - Ejemplo: nombreVariableOpcional!.count en este caso devolvería un valor de
 tipo no opcional Int siempre y cuando nombreVariableOpcional no fuera nil, si es nil
 provocaría un error (exception) en tiempo de ejecución.
 */
var gokuNameCharsCountForced = gokuName!.count


