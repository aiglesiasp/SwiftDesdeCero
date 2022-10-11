import UIKit

let characters: [String] = ["Goku", "Vegeta", "Bu", "Freezer", "Cell"]

// MARK: - REDUCE
/* El Closure reduce permite calcular un valor en base a una colección de datos.

 - En cada iteración el parámetro de entrada del Closure será la suma acumulada y
 el valor correspondiente a esa posición en la colección de datos.

 - Definición del Closure reduce en una lista:
    .reduce(intialResult: Result, nextPartialResult: (Result, (String, Int)) throws -> Result)
 */
let charactersPower = [("Goku", 95), ("Vegeta", 90), ("Gohan", 100), ("Freezer", 85), ("Bu", 94)]
/* Bucle reduce sobre el listado de charactersPower

 - Se da un valor inicial de 0 en la llamada a reduce.

 - En cada itereción se encuentra la suma acumulada powerSum y el valor de
 la iteración actual character.

 - Al finalizar las iteraciones sobre la colección de datos el closure devuelve
 el valor total acumulado.
 */
let charactersTotalPower = charactersPower.reduce(into: 0) { powerSum, character in
    // Sumar el power del character actual al acumulado powerSum
    powerSum = powerSum + character.1
    print("Characters reduce: \(character), powerSum: \(powerSum)")
}
print("Characters total power: \(charactersTotalPower)")
print()
