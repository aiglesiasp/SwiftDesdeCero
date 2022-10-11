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
// MARK: - FOR
/* Los bucle FOR se usan para iterar sobre una secuencia, como elementos de una
 colección, entre rangos de números o caracteres de un String.

 - Declaración:

    for nombreVariable in nombreColecciónDatos {
        código a ejecutar en el bulce tantas
        veces como elementos haya en nombreColecciónDatos
    }

 */

let characters: [String] = ["Goku", "Vegeta", "Bu", "Freezer", "Cell"]

print("--------------- FOR ---------------")
print()
/*
 - El bucle se ejecuta tantas veces como elementos haya en
 la colección de datos characters.

 - En cada iteración el valor para esa posición se asigna a la
 variable character, la cual solo se podrá utilizar dentro de
 las llaves del bucle.

 - La posición inicial por la que comienza el bucle será el índice 0
 de la colección de datos characters

 - Este bucle se ejecutará 5 veces desde el índice 0 al 4.
 */
for character in characters {
    print("For in value: \(character)")
}

print()
/*
 - Se puede obtener tanto el valor de la posición en cada iteración,
 como el índice correspondiente a la iteración (la posición del elemento).

 - Enumerated permite obtener la lista de characters como un listado de
 índices y valores.
 */
for (index, character) in characters.enumerated() {
    print("For with index: \(index) and value: \(character)")
}

print()
/*
 - La crear un bucle for se puede definir una condición where
 con la forma en la que se iterará por el listado de datos.

 - En este bucle se itera solo por los valores cuyo índice es múltiplo de 2.
 */
for (index, character) in characters.enumerated() where index.isMultiple(of: 2) {
    print("For with index multiple of 2: \(index) and value: \(character)")
}

print()
/*
 - Se puede crear un bucle sobre un rango de valores predeterminado
 */
// El siguiente bucle itera desde 1 hasta 10
for count in 1...10 {
    print("For range 1..10: \(count)")
}

print()
// El siguiente bucle itera desde 1 hasta 9
for count in 1..<10 {
    print("For range 1..<10: \(count)")
}

print()
/*
 - En caso de no necesitar el valor en cada iteración,
 existe el símbolo _ que indica que se descarta ese valor

 - El bucle iterará de 1 a 10 y en ninguna iteración se obtendrá
 el valor correspondiente
 */
for _ in 1...10 {
    print("For without iteration value 1..10")
}

print()
/*
 - El siguiente bucle invierte la posición de los datos de la
 colección characters e itera desde la posición 1 hasta n
 */
for character in characters.reversed() {
    print("\(character)")
}

print()
/*
 - La función stride permite crear un rango con cierta lógica.

 - En este caso se creará un rango desde 0 a 20 de dos en dos,
 es decir: 0, 2, 4, etc
 */
for index in stride(from: 0, to: 20, by: 2) {
    print("For with stride: \(index)")
}
