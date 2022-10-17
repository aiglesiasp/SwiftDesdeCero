import UIKit

// MARK: - INIT DE CONVENIENCIA
/* Definición de clase con una propiedad no opcional, es
 obligatorio definir un constructor de la clase para dicha
 propiedad.

 - Un inicializador de conveniencia permite crear diferentes
 formas de instanciar la clase con distintos parámetros.
 */
class Bootcamp {
    var id: String
    var name: String?

    // Inicializador por defecto con parámetros no
    // opcionales y sin valores por defectos
    init(id: String) {
        self.id = id
    }

    // Inicializador por conveniencia con los parámetros
    // "obligatorios" y los que se quieran añadir.
    convenience init(id: String, name: String) {
        self.init(id: id)
        self.name = name
    }
}

// Crear instancia utilizando el Inicializador por defecto
let bootcampMobileXIII = Bootcamp(id: "6810EF55-FB96-4FE8-8C2F-8539B2E69E65")
// Crear instancia utilizando el Inicializador por conveniencia
let bootcampMobileXIV = Bootcamp(id: "028D2575-4893-4529-AEEC-6261162316DF",
                                 name: "Bootcamp Mobile XIV")
