import UIKit

// MARK: - GESTIÓN ERRORES -
/* La gestión de errores es el proceso de responder y recuperarse de las
 condiciones de error en un programa. Swift proporciona soport para lanzar,
 capturar, propagar y manipular errores recuperables en tiempo de ejecución.

 - La gestión de errores interopera con patrones de gestión de
 errores que usan la clase NSError en Cocoa y Objective-C.

 - Los errores están representados por valores de tipos que se ajustan
 al protocolo Error. Este protocolo vacío indica que se puede usar un
 tipo específico de dato para la gestión de errores.
 */

// Declaración enum que implementa el protocolo Error y define un tipo de error
enum FightError: Error {
    case invalidFighters(fightersNeeded: Int)
    case emptyWinner
}

/* Lanzar un error permite indicar que sucedió algo inesperado y que el
 flujo normal de ejecución no puede continuar.

 - Por ejemplo, el siguiente código lanza un error para indicar que el combate
 necesita 2 luchadores para producirse.

    throw FightError.invalidFighters(fightersNeeded: 2)
 */

/* Cuando una función lanza un error, cambia el flujo del programa, por lo que
 es importante que se pueda identificar rápidamente los lugares en el código
 que pueden lanzar errores.

 - Para identificar estos lugares en el código, se escribe la palabra clave try,
 o la palabra clave try? antes de una porción de código que llama a una función
 que puede lanzar un error.
 */

/* Declaración de función que indica que puede propaga, lanzar errores y que
 devuelve un parámetro de tipo String.

 - Solo las funciones de lanzamiento (throws) pueden propagar errores. Cualquier error
 lanzado dentro de una función que se propague debe manejarse dentro de la función.
 */
func fight(between fighter: String?, vs fighter2: String?) throws -> String {
    guard let fighter = fighter,
          let fighter2 = fighter2 else {
        // Se propaga/lanza el error
        throw FightError.invalidFighters(fightersNeeded: 2)
    }

    guard let winner = [fighter, fighter2].randomElement() else {
        // Se propaga/lanza el error
        throw FightError.emptyWinner
    }

    // Se retorna de forma normal el valor de la función
    return winner
}

/* Con try? se puede gestionar un error convirtiéndolo en un valor opcional.

 - Si se lanza un error al evaluar el try?, el valor de la expresión es nula y
 no será necesario gestionar el error si no es necesario.
 */
let fightWinner = try? fight(between: nil, vs: "Gohan")

/* Para capturar los errores que se lanzan desde otro punto del proyecto se utiliza
 la estructura do/catch, permite ejecutar cierto código que puede lanzar un error,
 capturarlo y actuar en consecuencia.

 - Delante del código que lanza el error se pone la palabra try y este código irá
 dentro de un bloque do{ }

 - Es posible capturar cualquier error de forma genérica o añadir múltiples catch
 para cada tipo de error que se pueda producir.
 */
do {
    // Código que puede producir errores
    let fightWinner = try fight(between: nil, vs: "Gohan")
    print("Fight winner is: \(fightWinner)")
// Se captura el posible error FightError.emptyWinner
} catch FightError.emptyWinner {
    print("Winner is empty!")
// Se captura el posible error FightError.invalidFighters
} catch FightError.invalidFighters(let numFighters) {
    print("Need \(numFighters) fighters")
}

// MARK: - TRY! [NO UTILIZAR]
/* A veces, se sabe que una función no lanzará un error en tiempo de ejecución.

 - En esas ocasiones, se puede escribir try! antes de la expresión para deshabilitar
 la propagación de errores y envolver la llamada en una afirmación en tiempo de
 ejecución de que no generará ningún error.

 - Si realmente se lanza un error, se producirá un error de tiempo de ejecución.

    let fightWinner = try! fight(between: nil, vs: "Gohan")
 */


// MARK: - TIPO DATOS GENÉRICOS -
/* El código genérico le permite escribir funciones y tipos flexibles y
 reutilizables que pueden funcionar con cualquier tipo, sujeto a los
 requisitos que defina. Puede escribir código que evite la duplicación y
 exprese su intención de manera clara y abstracta.

 - Los genéricos son una de las características más poderosas de Swift,
 y gran parte de la biblioteca estándar de Swift está construida con código genérico.

 - Por ejemplo, los tipos Array y Dictionary de Swift son colecciones genéricas.
 */

/* Declaración de la función con parámetro de entrada genéricos y retorno
 de un valor del mismo tipo genérico.

 - Normalmente se utiliza T para indicar el tipo de dato genérico, pero se
 podría utilizar cualquier otra letra o nombre.

 - El parámetro de tipo T se sustituirá cuando se llame a la función con un
 tipo de dato concreto.

 - Después del nombre de la función se indican los diferentes tipos de datos
 genéricos, puede haber varios distintos:

    func nombreFunción<T>

 - Es posible obligar a que el tipo de dato que sustituya al valor genérico
 cumpla ciertos requisitos, por ejemplo que conforme un protocolo.

    func nombreFunción<T: NombreProtocolo>
 */
func battle<T>(between fighter: T?, vs fighter2: T?) throws -> T {
    guard let fighter = fighter,
          let fighter2 = fighter2 else {
        // Se propaga/lanza el error
        throw FightError.invalidFighters(fightersNeeded: 2)
    }

    guard let winner = [fighter, fighter2].randomElement() else {
        // Se propaga/lanza el error
        throw FightError.emptyWinner
    }

    // Se retorna de forma normal el valor de la función
    return winner
}

// Es posible llamar a la función con diferentes tipos de datos
try? battle(between: 2, vs: 5)
try? battle(between: "Trunks", vs: "Bu")
