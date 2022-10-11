import UIKit

let characters: [String] = ["Goku", "Vegeta", "Bu", "Freezer", "Cell"]

// MARK: - FOREACH
/* El Closure forEach permite iterar sobre un listado de elementos desde el primero
 hasta el último de forma ordenada.

 - En cada iteración el parámetro de entrada del Closure será el valor correspondiente
 a esa posición en la colección de datos.

 - Definición del Closure forEach en una lista:
     .forEach((Self.Element) -> Void)
 */

// Bucle forEach sobre el listado de characters
characters.forEach { character in
    print("Characters forEach: \(character)")
}
print()
