import UIKit

// CLASES
//Crear clase
class Friends {
    let coffeShop: String
    var title: String
    var actors: [String]? = []
    //Crear iniciador
    init(title: String, coffeShop: String) {
        self.title = title
        self.coffeShop = coffeShop
    }
    //Crear iniciador conveniencia
    convenience init(title: String, coffeShop: String, actors: [String]) {
        self.init(title: title, coffeShop: coffeShop)
        self.actors = actors
    }
}

//Instanciamos variable
let serie = Friends(title: "Friends",
        coffeShop: "Central Perk")

//Acceder a los valores
serie.title
serie.coffeShop
serie.actors

//CLase 2
let serie2 = Friends(title: "Friends", coffeShop: "Central Perk", actors: ["Joey"])

serie2.title
serie2.coffeShop
serie2.actors
