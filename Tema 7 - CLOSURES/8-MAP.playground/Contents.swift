import UIKit

let characters: [String] = ["Goku", "Vegeta", "Bu", "Freezer", "Cell"]

// MARK: - MAP
/* El Closure map permite iterar sobre un listado de elementos desde el primero
 hasta el último de forma ordenada y devolver un valor en cada una de ellas.

 - En cada iteración el parámetro de entrada del Closure será el valor correspondiente
 a esa posición en la colección de datos.

 - Definición del Closure map en una lista:
     .map((Self.Element) -> T)

 - Existe una variación que descarta los valores nil que se devuelvan en cada iteración
 del bucle, se llama compactMap.
 */
// Bucle map sobre el listado de characters
let mapResult = characters.map { character -> String in
    print("Characters map: \(character)")
    return character
}
print("Map result: \(mapResult)")
print()

let charactersOptionals = ["Goku", "Vegeta", nil, "Freezer", nil]
// Bucle compactMap sobre el listado de charactersOptionals
let compactMapResult = charactersOptionals.compactMap { character -> String? in
    print("Characters compactMap: \(String(describing: character))")
    return character
}
print("CompactMap result: \(compactMapResult)")
print()
