import UIKit

// MARK: - CLOSURE ESCAPING
/* Hay ciertos casos en los que se ha de tener precaución con el uso de los Closure,
 el propio lenguaje nos lo indicará.

 - Se dice que un Closure escapa de una función cuando el Closure se pasa como argumento
 a la función, pero éste se llama después de que la función finalice su ejecución.

 - Cuando se declara una función que toma un Closure como uno de sus parámetros,
 se escribe @escaping antes del tipo del parámetro para indicar que el Closure puede
 escapar al ámbito de la función.

 - Un motivo por el que un Closure puede escapar al ámbito de una función es
 almacenándolo en una variable definida fuera de la función.

 - También, habitualmente las funciones con operaciones asincrónica tienen
 como parámetro de entrada un Closure para devolver resultados una vez finalizada
 la ejecución asíncrona. Por eso el Closure debe "escapar", para ser llamado más tarde.
 */
/* Declaración de un tipealias que da nombre al Closure utilizado, de esta
 forma no será necesario escribir la declaración del Closure cada vez.
 */
typealias CharacterResult = (String) -> ()

/* Declaración e implementación de la función, tiene 2 parámetros de entrada
 y como último parámetro uno de tipo del Closure que será llamado en algún
 momento indeterminado.
 */
func fetchCharacter(_ character: String, callback: @escaping CharacterResult) {
    // Si se hiciera uan ejecución asíncrona de código, cuando este respondiera
    // se llamaría al callback que "escapa" a la vida de la ejecución de la función
    // y seguiría "vivo", en caso de no utilizar el escaping, el Closure podría ser
    // nil y de esta manera no se podría devolver el valor utilizando el Closure.
    callback("Freezer")
}
