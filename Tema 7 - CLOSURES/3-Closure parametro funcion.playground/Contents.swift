import UIKit

// MARK: - CLOSURE PARÁMETRO FUNCIÓN
/* Declaración de un tipealias que da nombre al Closure utilizado, de esta
 forma no será necesario escribir la declaración del Closure cada vez.
 */
typealias BattleWinner = (String) -> ()

/* Declaración e implementación de la función, tiene 3 parámetros de entrada
 con diferentes etiquetas y como último parámetro uno de tipo del Closure.
 */
func battle(between fighter1: String, and fighter2: String, callback: BattleWinner) {
    // Crear una colección de datos con los parámetros de entrada
    let fighters = [fighter1, fighter2]

    // Obtener de forma aleatoria el ganador del combate. Como la
    // función randomElement devuelve un valor de tipo opcional se
    // desempaqueta el valor de forma segura con la instrucción guard let.
    guard let winner = fighters.randomElement() else { return }

    // Se lanza/ejecuta el código del Closure con el parámetro winner.
    callback(winner)
}

/* Se realiza la llamada a la función pasando como parámetro la implementación
 del Closure que lanzará la ejecución desde dentro de la función.
 */
battle(between: "Goku",
       and: "Vegeta",
       callback: { winner in
    print("Battle winner closure: \(winner)")
})

/* Cuando se declara un Closure como último parámetro de entrada de una función,
 es posible extraer la implementación del mismo de la llamada de la función fuera
 de la misma haciendo el código más legible.
 */
battle(between: "Goku",
       and: "Vegeta") { winner in
    print("Battle winner closure: \(winner)")
}
