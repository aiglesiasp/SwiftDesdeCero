import UIKit

// MARK: - OPERACIONES & COMPARACIONES -
// MARK: - OPERADORES LÓGICOS
/* Los operadores lógicos nos permiten hacer comparaciones
 compuestas de varios valores de tipo Bool. las comparaciones
 se pueden realizar con el número de parámetros que se necesiten,
 mínimo dos y máximo n.

 - Existen 4 operadores lógicos dependiendo el tipo de comprobación
 que necesitemos realizar.
    - AND       -> &&
    - OR        -> ||
    - EQUAL     -> ==
    - NOT EQUAL -> !=
 */
// MARK: - AND &&
/* El operador AND únicamente devuelve true cuando todas las comparaciones
 que se realizan son true:

 - true  && true  -> true
 - false && true  -> false
 - true  && false -> false
 - false && false -> false
 */
var isGokuGOAT = false
var isGohanGOAT = true
var isVegetaGOAT = false
var areAllGOAT = isGokuGOAT && isGohanGOAT && isVegetaGOAT

// MARK: - OR ||
/* El operador OR únicamente devuelve false cuando todas las comparaciones
 que se realizan son false:

 - true  || true  -> true
 - false || true  -> true
 - true  || false -> true
 - false || false -> false
 */
var isGokuBetterVegeta = false
var isGohanBetterVegeta = true
var areSomeBetter = isGokuBetterVegeta || isGohanBetterVegeta

// MARK: - EQUAL ==
/* El operador EQUAL devuelve true cuando las comparaciones
 que se realizan tienen el mismo valor:

 - true  || true  -> true
 - false || true  -> false
 - true  || false -> false
 - false || false -> true
 */
var gokuPower = 95
var vegetaPower = 90
gokuPower == vegetaPower

// MARK: - NOT EQUAL !=
/* El operador NOT EQUAL devuelve true cuando las comparaciones
 que se realizan tienen distinto valor:

 - true  || true  -> false
 - false || true  -> true
 - true  || false -> true
 - false || false -> false
 */
var gohanPower = 100
var trunksPower = 80
gohanPower != trunksPower

// MARK: - NEGACIÓN !
/* El operador NEGACIÓN devuelve el valor contrario
 al que se está aplicando

 - !true  -> false
 - !false -> true
 */
var isGohanGokuSon = true
!isGohanGokuSon
