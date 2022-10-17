import UIKit


// MARK: - CONTROLES DE FLUJOS -
/* Los controles de flujo incluyen diferentes tipos de bucles para
 realizar una tarea varias veces y declaraciones para transferir el
 flujo de ejecución a otro punto del código.

 - Los bucles que se pueden utilizar son For, While, Repeat y cada se
 utilizará según las necesidades de la lógica a aplicar.

 - Las instrucciones que permiten romper el flujo del código son break y
 continue, con ellas se podrá desviar el flujo "normal" del código a otro punto.

 - Cada ejecución de un bucle se conoce como iteración.
 */

// MARK: - BREAK
/*
 - La instrucción que permite romper el flujo del código es break, ésta
 detiene la ejecución del bucle y no se realizan más iteraciones
 */
print()
print("--------------- BREAK ---------------")
print()

for (index, character) in characters.enumerated() {
    print("For with break index: \(index) and value: \(character)")
    // Si el índice es igual a 2 se ejecuta el break y
    // finaliza el bucle
    if index == 2 {
        break
    }
}
