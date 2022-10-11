import UIKit

// MARK: - TIPOS DE DATOS -
// MARK: - Tuplas
/* Las tuplas nos permiten agrupar varios valores en un
 único tipo de dato para posteriormente acceder a ellos
 con su posición o con el nombre que le hayamos puesto al valor

 - Declaración de tupla: (nombreParámetro: TipoData, nombreParámetro: TipoDato)

 */
var superheroe: (id: String, name: String, isFavorite: Bool, description: String, photo: String)
superheroe = ("1", "David", true, "Líder de todos los héroes", "")
// id
superheroe.0
// description
superheroe.3
superheroe.name
superheroe.isFavorite
