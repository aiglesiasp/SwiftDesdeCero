import UIKit

// MARK: - COLECCIONES DE DATOS -
/* Swift proporciona tres tipos de colecciones de datos, conjuntos y diccionarios,
 para almacenar colecciones de valores.

 - ARRAY son colecciones ordenadas de valores no únicos.
 - DICTIONARY son colecciones desordenadas de asociaciones clave-valor.
 - SET son colecciones desordenadas de valores únicos.
 */

// MARK: - ARRAY
/* Los arrays son colecciones ordenadas de valores que no
tienen porqué ser únicos.

 - Declaración var variableArray: [TipoDato]

 - Los elementos se añaden, salvo que se indique lo contrario,
 al final de la colección.
 */
var charactersArray: [String] = ["Goku", "Vegeta", "Bu", "Freezer", "Cell"]
// Obtener el número de elementos de la colección
charactersArray.count
// Obtener el elemento de la posición indicada de la colección
charactersArray[2]
// Obtener el primer elemento de la colección
charactersArray.first
// Obtener el último elemento de la colección
charactersArray.last
// Añadir un nuevo elemento al final de la colección
charactersArray.append("Gohan")
// Añadir nuevos elementos al final de la colección
charactersArray.append(contentsOf: ["Trunks", "Piccolo", "Broly"])
// Ordenar listas
charactersArray.sorted()
// Eliminar el elemento de la posición indicada de la colección
charactersArray.remove(at: 0)
// Eliminar todos los elementos de la colección
charactersArray.removeAll()

