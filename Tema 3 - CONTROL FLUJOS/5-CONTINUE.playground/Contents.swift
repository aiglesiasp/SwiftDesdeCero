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

// MARK: - CONTINUE
/*
 - La instrucción que permite romper el flujo del bucle es continue,
 ésta detiene la ejecución de la iteración del bucle y se pasa a la
 siguiente iteración
 */
print()
print("--------------- CONTINUE ---------------")
print()

for (index, character) in characters.enumerated() {
    if index == 2 {
        // Si el índice es igual a 2 se ejecuta el continue y
        // se pasaría a la siguiente iteración del bucle
        continue
    }
    
    print("For with continue index: \(index) and value: \(character)")
}
