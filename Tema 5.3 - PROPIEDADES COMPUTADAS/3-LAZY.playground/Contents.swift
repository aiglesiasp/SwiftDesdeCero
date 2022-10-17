import UIKit

// MARK: - PROPIEDADES LAZY -
/* Con lazy el compilador retrasa la llamada a calcular datos hasta la
 primera vez que realmente necesita el valor.

 - Solo se declarará lazy una variable, nunca se podrá hacer con una constante.

 - El Closure asociado a la propiedad lazy se ejecuta solo si lee esa propiedad. Si
 por alguna razón esa propiedad no se usa, se evitan asignaciones y cálculos innecesarios.

 - Ejmplo uso, no se calcurá el count de heroes hasta que se llame a la
 variable para obtener los datos:

    lazy var fullName: String {
        "\(name) \(lastName) \(lastName2)"
    }
 */


// MARK: - EJEMPLOS -
// Declaración de la clase Developer
struct Developer {
    var id: String?
    var name: String?
    var lastName: String?
    var lastName2: String?
    var email: String?
    var photo: String?
    var heroes: [Heroe] = []

    // MARK: - PROPIEDAD LAZY
    lazy var fullName: String = {
        "\(String(describing: name)) \(String(describing: lastName)) \(String(describing: lastName2))"
    }()

// Declaración de la clase Heroe
struct Heroe {
    var id: String?
    var photo: String?
    var name: String?
    var description: String?
    var isFavorite: Bool?
}

// Declaración de la clase Bootcamp
struct Bootcamp {
   var id: String
   var name: String?
}
