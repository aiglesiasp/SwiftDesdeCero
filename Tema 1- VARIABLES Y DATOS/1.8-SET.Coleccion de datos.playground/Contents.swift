import UIKit

// MARK: - COLECCIONES DE DATOS -
/* Swift proporciona tres tipos de colecciones de datos, conjuntos y diccionarios,
 para almacenar colecciones de valores.

 - ARRAY son colecciones ordenadas de valores no únicos.
 - DICTIONARY son colecciones desordenadas de asociaciones clave-valor.
 - SET son colecciones desordenadas de valores únicos.
 */

// MARK: - SET
/* Los set o conjuntos permiten almacenar un conjunto de datos
 no ordenado y en el que los valores son únicos y todos del mismo
 tipo de dato.

 - Los valores pueden ser de cualquier tipo de dato, opcionales o no.

 - Declaración de un diccionario: Set<tipoDato>
 */
var charactersSet: Set<String> = []
// Insertar valores en el conjunto
charactersSet.insert("Goku")
charactersSet.insert("Vegeta")
charactersSet.insert("Bu")
// Insertar valores en el conjunto y comprobar si se pudo insertar
var setInserted = charactersSet.insert("Goku")
setInserted.inserted
// Obtener la cantidad de elementos del conjunto
charactersSet.count
// Devuelve el elemento que coincida con el indicado
// o nil en caso de que no exista en el conjunto
charactersSet.update(with: "Freezer")
charactersSet.update(with: "Freezer")
// Para saber si contiene ese valor
charactersSet.contains("Aitor")
// Eliminar todos los elementos del conjunto
charactersSet.removeAll()
// Para saber si contiene ese valor
