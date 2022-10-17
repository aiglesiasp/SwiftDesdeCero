import UIKit

// MARK: - TIPOS OPCIONALES -
/* Se pueden definir tipos de datos opcionales o no, esto
 significa que si una variable no está declarada con un
 tipo de dato opcional esa variable nunca podrá tener el
 valor de NIL.

 Que una variable sea de tipo opcional nos indica que cuando
 queramos utilizar u obtener el valor almacenado en esa variable
 puede contener un valor del tipo de dato indicado o no contener
 valor, lo que devolverá un nil.

 Para utilizar variables con tipo de dato opcional es obligatorio
 indicar explícitamente el tipo de dato de la variable en la
 declaración. Si no se asigna un valor inicial, esta variable de
 tipo opcional no tendrá valor, será nil.

 - El operador que indica un tipo de dato opcional es ?

 - Ejemplo declaración: var nombreVariable: TipoDato?
 */
var gokuName: String?
var gohanName: String? = "Gohan"
