import UIKit

// MARK: - CLOSURE ABREVIADO
/* En caso de tener una línea de código o poca lógica el closure, normalmente se utiliza
 el parámetro especial $0 para referirse al parámetro de entrada, de esta forma no es
 necesario indicar el nombre del parámetro de entrada ni escribir la palabra clave in.
 */

typealias DragonBallCallback = (Int) -> ()
/* $0 represante el parámetro de entrada del Closure, sería equivalente a:

 let getDragonBalls: DragonBallCallback = { dragonBallCount in
    print("\(dragonBallCount)")
 }
 */
let getDragonBalls: DragonBallCallback = { print("\($0)") }
// Invocamos el Closure
getDragonBalls(7)
