import UIKit

// MARK: - CLASES -
/* Una clase es una definición de un objeto o elemento que se puede
 representar con diferentes propiedades o parámetros.

 - Las clases se crean como tipo de datos por referencia, esto quiere
 decir que una variable del tipo de la clase es como un puntero al espacio
 de memoria de la instancia.

 - Las clases pueden contener tantas propiedades y funciones como sean necesarias.

 - Para acceder tanto a las propiedades como las funciones de la clase, se hará
 mediante el nombreInstanciaClase.nombrePropiedad.

 - Existen tres modificadores de acceso tanto a las propiedades como a las
 funciones de una clase:

    - Públicas: Valor por defecto, se indica con public
    - Privadas: Se indica con private y no serán accesibles desde fuera de la clase.
 */
print("--------------- CLASSES ---------------")
// Declaración de la clase Heroe
class Heroe {
    // Propiedad privada solo accesible desde la declaración de la propia clase
    private var id: String?
    var photo: String?
    var name: String?
    var description: String?
    var isFavorite: Bool?

    // Inicializador o constructor de la clase, es obligatorio
    // inicializar todas las variables no opcionales o que no
    // tengan un valor por defecto en su declaración.
    init(id: String, photo: String, name: String, description: String, isFavorite: Bool) {
        // Con self se hace referencia a que es una propiedad de la clase, de esta forma
        // se distingue entre una propiedad de la clase y un parámetro de la función.
        self.id = id
        self.photo = photo
        self.name = name
        self.description = description
        self.isFavorite = isFavorite
    }
}
