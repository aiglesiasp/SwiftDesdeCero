import UIKit

// MARK: - TIPOS ESPECIALES -
// MARK: - Cast entre tipos
/* Castear un tipo de dato a otro supone hacer que
 un valor de, por ejemplo, tipo String pase a ser
 de tipo Int.

 Si intentas Castear un valor a otro incompatible
 provocará un error que se conoce como Exception.
 */

var ageValue = 20
var gokuAge: String = "\(ageValue)"
var age = Int(gokuAge)

// Verificar de qué tipo de dato es una variable con is
age is Int
ageValue is Int
gokuAge is String
