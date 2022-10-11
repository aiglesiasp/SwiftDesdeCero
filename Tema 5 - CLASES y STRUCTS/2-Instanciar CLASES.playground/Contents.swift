import UIKit


class Heroe {
    private var id: String?
    var photo: String?
    var name: String?
    var description: String?
    var isFavorite: Bool?

    init(id: String, photo: String, name: String, description: String, isFavorite: Bool) {
        self.id = id
        self.photo = photo
        self.name = name
        self.description = description
        self.isFavorite = isFavorite
    }
}

// MARK: - INSTANCIAR CLASES
/* Crear una instancia de la clase Heroe significa reservar un espacio de memoria
 para los datos que se "guarden" en esta instancia.

 - Se podrán crear tantas instancias de una clase como se necesiten, cada una de
 ellas con los mismos o diferentes datos.

 - Para instanciar una clase se utiliza el constructor de la clase conocido como init.

 - Cada elemento definido en la clase se conoce como propiedad de la clase.
*/

let goku = Heroe(id: "D13A40E5-4418-4223-9CE6-D2F9A28EBE94",
                 photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
                 name: "Goku",
                 description: "Sobran las presentaciones cuando se habla de Goku. El Saiyan fue enviado al planeta Tierra, pero hay dos versiones sobre el origen del personaje. Según una publicación especial, cuando Goku nació midieron su poder y apenas llegaba a dos unidades, siendo el Saiyan más débil. Aun así se pensaba que le bastaría para conquistar el planeta. Sin embargo, la versión más popular es que Freezer era una amenaza para su planeta natal y antes de que fuera destruido, se envió a Goku en una incubadora para salvarle.",
                 isFavorite: true)

/* No es posible acceder a las propiedades privadas de la clase como:
    goku.id
 */

// Acceder a la propiedad pública name de la clase
print("Class heroe name: \(String(describing: goku.name))")
// Modificar una propiedad de la clase
goku.name = "Goku Saiyan"

/* Las clases son tipos por referencia, al asignar una instancia
 "apuntará" al mismo espacio de memoria de la instancia. Al modificar
 una propiedad en la nueva variable esta variable "apuntará" al mismo
 espacio de memoria y sólo existira una instancia de la clase mientras
 no se vuelva a llamar al constructor de la clase
 */
let heroeGoku = goku
heroeGoku.isFavorite = false
// Se comprueba con el valor de las dos variables que se han modificado
// que al modificar el valor de una propiedad se modifica en la otra también.
print("Is Goku favorite: \(String(describing: goku.isFavorite)) and is heroeGoku favorite: \(String(describing: heroeGoku.isFavorite))")
