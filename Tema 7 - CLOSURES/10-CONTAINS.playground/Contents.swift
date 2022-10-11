import UIKit

let characters: [String] = ["Goku", "Vegeta", "Bu", "Freezer", "Cell"]

// MARK: - CONTAINS
/* El Closure contains permite comprobar si al menos un valor de la colección de datos
 cumple cierta condición.

 - En cada iteración el parámetro de entrada del Closure será el valor correspondiente
 a esa posición en la colección de datos.

 - Definición del Closure contains en una lista:
     .contains(where: (String) throws -> Bool)
 */
let characterGoku = "Goku"
// Closure contains sobre el listado de characters
let containsResult = characters.contains { character in
    print("Characters contains: \(character)")
    // Si el elemento actual es igual que el que se busca
    // devolverá un true y finalizarán las iteraciones, si no,
    // continuará iterando hasta el final de la colección de datos.
    return character == characterGoku
}
print("Contains result: \(containsResult)")
print()
