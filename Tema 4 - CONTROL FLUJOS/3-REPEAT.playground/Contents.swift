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

// MARK: - REPEAT
/*
 - Es una variación del bucle while, conocido como bucle de repeat.

 - Siempre realiza la primera iteración antes de evaluar la condición
 de repetición del bucle.

 - Continúa repitiendo el bucle hasta que la condición sea falsa.
 */
print()
print("--------------- REPEAT ---------------")
print()

var isVegetaSaiyan = false
repeat {
    print("Vegeta is Saiyan")
} while isVegetaSaiyan

