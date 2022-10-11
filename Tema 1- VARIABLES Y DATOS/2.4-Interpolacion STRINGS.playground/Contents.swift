import UIKit

// MARK: - OPERACIONES & COMPARACIONES -
// MARK: - INTERPOLACIÓN STRINGS
// MARK: - CON VARIABLES
/*  Para añadir valores, almacenados en una variable, a
 un String se utiliza la interpolación de Strings, esto
 obtiene el valor de la variable y lo añade al string.

 - Uso: "Mi string \(MI_VARIABLE)"
 */
let dragonBallCreator = "Akira Toriyama"
var dragonBallDate: Int = 1984
let dragonBallCharactersCount = 400

let dragonBallDescription = "The Dragon Ball anime series was created by \(dragonBallCreator) on \(dragonBallDate) and has more than \(dragonBallCharactersCount) characters"

// MARK: - CON ARGUMENTOS
/* Para añadir valores a un String se puede elegir por el uso
 de los Strings con formato, en este caso se definen ciertas posiciones
 en el String que serán sustituidas con el valor de los argumentos que
 le pasamos.

 - Posibles argumentos en un String:
    %d  - Int value
    %f  - Float value
    %ld - Long value
    %@  - String value
 */
let dragonBallDescriptionFormat = String(format: "The Dragon Ball anime series was created by %@ on %d and has more than %d characters",
                                         dragonBallCreator,
                                         dragonBallDate,
                                         dragonBallDate)
