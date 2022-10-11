import UIKit

// MARK: - COLECCIONES DE DATOS -
/* Swift proporciona tres tipos de colecciones de datos, conjuntos y diccionarios,
 para almacenar colecciones de valores.

 - ARRAY son colecciones ordenadas de valores no únicos.
 - DICTIONARY son colecciones desordenadas de asociaciones clave-valor.
 - SET son colecciones desordenadas de valores únicos.
 */

// MARK: - DICTIONARY
/* Los diccionarios permiten almacenar un conjunto de datos
 no ordenado con un fomato clave-valor, es decir, cada dato
 almacenado tiene una clave asociada que debe ser única.

 - Las claves pueden ser cualquier tipo de dato primitivo.

 - Los valores pueden ser de cualquier tipo de dato, opcionales o no.

 - Solo se puede almacenar un único tipo de dato, no puede haber valores
 de diferente tipos de datos.

 - Declaración de un diccionario: [claveTipoDato : valorTipoDato]
 */
var charactersDictionary: [Int: String] = [1: "Goku",
                                           2: "Vegeta",
                                           3: "Bu",
                                           4: "Freezer",
                                           5: "Cell"]

// Obtener el valor asociado a la clave indicada del diccionario
charactersDictionary[1]
// Si la clave indicada no existe se crea y se asocia el valor,
// si ya existe se sustituye el valor actual por el nuevo
charactersDictionary[2] = "Gohan"
charactersDictionary[6] = "Trunks"
// Obtener todas las claves del diccionario
charactersDictionary.keys
// Obtener todos los valores del diccionario
charactersDictionary.values
// Comprobar si un diccionario está vacío o no
charactersDictionary.isEmpty
// Actualizar el valor para la clave indicada
charactersDictionary.updateValue("Piccolo", forKey: 7)
charactersDictionary.updateValue("Broly", forKey: 8)
// Eliminar el elemento de la clave indicada del diccionario
charactersDictionary.removeValue(forKey: 8)
// Eliminar todos los elementos del diccionario
charactersDictionary.removeAll()
