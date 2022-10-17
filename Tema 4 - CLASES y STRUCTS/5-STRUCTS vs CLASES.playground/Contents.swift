import UIKit

// MARK: - STRUCT VS CLASS -
/* Por lo general, las Structs se utilizan para definir los modelos de datos en un
 proyecto y las Clases para el resto.

 - Las Structs se crean en el Stack (es muy eficiente y rápido), las Clases
 lo hacen en el Heap (añadir o borrar memoria del heap es más costoso y lento).

 - En las Structs todas las propiedades son inmutables.

 - Las Structs no podrán heredar funcionalidades de otras Structs.

 - El uso de Structs es seguro en entornos multihilo ya que nunca se puede modificar
 el valor inicial, siempre se realizan copias de los valores.
 */
// Definición de una Struct Developer
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

// MARK: STRUCT MUTATING
/* En las Structs todo es inmutable por defecto. Para poder modificar una Struct,
 hay que utilizar la palabra mutating delante de la firma de la función que modifica
 un valor de la Structs:

    mutating func update(email: String) {}
 */
developerDavid.update(email: "d.jardon@gmail.com")
