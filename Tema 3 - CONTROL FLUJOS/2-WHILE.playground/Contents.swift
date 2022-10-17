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

// MARK: - WHILE
/*
 - Este tipo de bucles se utiliza cuando no se conoce el número de iteraciones
 antes de que comience la primera iteración.

 - El bucle while comienza evaluando una sola condición. Si la condición es verdadera,
 se ejecuta el bucle hasta que la condición sea falsa.
 */
print()
print("--------------- WHILE ---------------")
print()

var isGokuAlive = true
while isGokuAlive {
    print("Goku alive!")
    isGokuAlive = false
}
