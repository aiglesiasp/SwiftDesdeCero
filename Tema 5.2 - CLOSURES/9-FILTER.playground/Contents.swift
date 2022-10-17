import UIKit

let characters: [String] = ["Goku", "Vegeta", "Bu", "Freezer", "Cell"]

// MARK: - FILTER
/* El Closure filter permite iterar sobre un listado de elementos desde el primero
 hasta el último de forma ordenada y devolver solo los valores que cumplan cierta condición.

 - En cada iteración el parámetro de entrada del Closure será el valor correspondiente
 a esa posición en la colección de datos.

 - Definición del Closure filter en una lista:
     .filter(isIncluded: (String) throws -> Bool)
 */
// Closure filter sobre el listado de characters

let filterResult = characters.filter { character in
    print("Characters filter: \(character)")
    return character.count > 4 ? true : false
}
print("Filter result: \(filterResult)")
print()
