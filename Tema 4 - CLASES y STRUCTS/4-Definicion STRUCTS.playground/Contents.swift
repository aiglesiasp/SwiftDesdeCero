import UIKit

// MARK: - ESTRUCTURAS / STRUCTS -
print("--------------- STRUCTS ---------------")
/* Una struct es una definición de un objeto o elemento que se puede
 representar con diferentes propiedades o parámetros igual que una clase.

 - Las struct se crean como tipo de datos por valor, esto quiere decir que
 cuando se asigna o se pasa como parámetro en una función una variable del
 tipo de la struct se realiza una copia de los datos y crea un nuevo espacio
 de memoria por lo que la información original no se modificará.

 - Las struct pueden contener tantas propiedades y funciones como sean necesarias.

 - Para acceder tanto a las propiedades como las funciones de la struct, se hará
 mediante el nombreInstanciaStruct.nombrePropiedad.

 - Cuándo crear una Struct? Algunos ejemplos:
    - Cuando se trabaja con multithreads (en varios hilos de ejecución)
    - Cuando la velocidad de procesamiento de datos es importante
    - El propósito principal de un Struct es encapsular valores de datos relativamente simples.
    - Cuando los valores encapsulados se copien en lugar de que se haga referencia a ellos.
    - Una Struct no necesita heredar propiedades o funciones de otra Struct existente.
 */



/ Definición de una Struct Developer
struct Developer {
    var id: String?
    var name: String?
    var lastName: String?
    var lastName2: String?
    var email: String?
    var photo: String?
    var bootcamp: Bootcamp?
    var heroes: [Heroe] = []

    // No es necesario definir un init, al ser una Struct se genera por defecto

    // STRUCT MUTATING: Permite modificar un valor de la Struct
    mutating func update(email: String) {
        self.email = email
    }
}

var developerDavid = Developer(id: "FBB0D60E-9A10-4118-8264-3672B86E155E",
                               name: "David",
                               lastName: "Jardón",
                               lastName2: "Peinado",
                               email: "david.jardon@dustsummit.com",
                               photo: "https://media-exp1.licdn.com/dms/image/C4E03AQG2mgPKHV0rlQ/profile-displayphoto-shrink_200_200/0/1610211633472?e=1657152000&v=beta&t=YLu4HYZBHk8VOQC6bXiXvrfJ0TX0UJmSdFTbWh_qCJQ",
                               bootcamp: bootcampMobileXIV,
                               heroes: [])

print("Struct developer: \(developerDavid)")
/* En una Struct no se pueden modificar las propiedades si se trabaja con una
 constante (let) aunque la propiedad esté definida como var. Si la variable
 utilizada fuera una variable (var) en lugar de una constante sí se podría hacer
 la siguiente actualización de valor:

    developerDavid.email = "d.jardon@gmail.com"
 */
