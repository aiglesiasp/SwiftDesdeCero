import UIKit

// MARK: - OBSERVADORES PROPIEDADES -
/* Swift permite añadir código que será ejecutado cuando una propiedad
 está a punto de cambiar o ha sido cambiada. Por ejemplo, esto se puede
 utilizar para actualizar la interfaz de usuario cuando un valor cambia.

 - Los observadores que se pueden añadir a una variable de una clase o struct:

    - En willSet hay un valor especial llamado newValue que contiene
    el nuevo valor que tendrá la propiedad.

    - En didSet existe un valor llamado oldValue para representar el
    valor anterior a la modificación.
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

    // MARK: - OBSERVADORES PROPIEDADES
    var bootcamp: Bootcamp? {
        // Observador que se ejecutará automáticamente cuando se asigne
        // un nuevo valor al a propiedad bootcamp justo antes de modificar
        // el valor anterior.
        willSet {
            print("Property bootcamp will set currentValue: \(String(describing: bootcamp)) newValue: \(String(describing: newValue))")
        }

        // Observador que se ejecutará automáticamente cuando se asigne
        // un nuevo valor al a propiedad bootcamp y se haya modificado el valor.
        didSet {
            print("Property bootcamp did set currentValue: \(String(describing: bootcamp)) oldValue: \(String(describing: oldValue))")
        }
    }
}


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

