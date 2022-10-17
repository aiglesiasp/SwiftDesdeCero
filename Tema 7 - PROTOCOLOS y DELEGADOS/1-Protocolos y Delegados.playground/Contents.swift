import UIKit

// MARK: - PROTOCOLOS -
/* Un Protocolo es la definición de un "contrato" con diferentes
 propiedades y funciones que tienen que implementar las clases que
 conformen el protocolo.

 - Un Protocolo en Swift es similar a las interfaces en otros
 lenguages de programación donde se define la forma en la que se van
 a comunicar diferentes clases.

 - La definición de un protocolo es similar a la de una clase o struct:

     protocol NombreProtocol {
        declaración de propiedades
        declaración de funciones
     }

 - En un protocolo solo se declaran las funciones, la implementación la
 realiza la clase que conforma el protocolo, esto quiere decir que cada
 clase puede implementar de forma personalizada una función de un protocolo.

 - Tantas clases como sea necesario pueden implementar/conformar el mismo
 protocol sin limitaciones más que las que plantee el propio protocolo.

 - Utilizando la palabra mutating delante del nombre de la función definida en el protocolo
 se permite que quien conforma este protocolo pueda modificar la instancia, esto
 se utilizará para Enum o Structs por ejemplo.

    mutating func nombreFunción()
 */

/*
 Declaración protocolo SaiyanProtocol en el que se definen una variable saiyanPower
 y una función convertToSaiyan, las clases que implementen este protocolo deberán
 definir la variable saiyanPower e implementar la función convertToSaiyan.

 En este caso, para declarar una función que sea de implementación opcional en un protocolo
 se utilizar la etiqueta @objc en la declaración del protocolo y @objc optional en la de la
 función, esto hará que no sea obligatorio que la función implemente esta función cuando
 conforme este protocolo.
 */
@objc protocol SaiyanProtocol {
    // Variable que definirá el get y set de la variable
    var power: Float { get set }
    // Variable que definirá solo el get y el set será privado
    var saiyanPower: Float { get }
    // Función de implementación opcional por @objc optional
    @objc optional func convertToSaiyan(power: Float)
}

/*
 Declaración clase Heroe que conforma el protocolo SaiyanProtocol, a diferencia
 de la herencia, una clase puede conformar tantos protocolos como sea necesario.
 */
class Heroe: SaiyanProtocol {
    // Variables del protocolo SaiyanProtocol
    /* Se declara la variable con un get público
     y el set se hace privado con private(set)
     */
    private(set) var saiyanPower: Float
    var power: Float

    // Inicializador o constructor de la clase
    init(power: Float, saiyanPower: Float) {
        self.power = power
        self.saiyanPower = saiyanPower
    }

    // Función del protocolo SaiyanProtocol
    func convertToSaiyan() {
        power = power * saiyanPower
    }
}

// Instancia de un objeto de la clase Heroe
let goku = Heroe(power: 30,
                 saiyanPower: 20)

print("Goku power: \(goku.power)")
goku.convertToSaiyan()
print("Goku Saiyan power: \(goku.power)")


// MARK: - DELEGACIÓN PROTOCOLOS -
/* La delegación es un patrón de diseño que permite que una clase o estructura
 transfiera/delegue algunas de sus responsabilidades a una instancia de
 otro tipo.

 - Este patrón de diseño se implementa mediante la definición de un protocolo
 que encapsula las responsabilidades delegadas, de modo que se garantiza que
 un tipo que conforme el protocolo (se llama delegado) proporcione la funcionalidad
 que se ha delegado.

 - La delegación se puede utilizar para responder a una acción en particular o para
 recuperar datos de una fuente externa sin necesidad de conocer el tipo de esa fuente.

 - En este patrón de diseño es muy importante tener en cuenta que el delegado en la mayoría
 de los casos no deja de se más que la referencia a la instancia de otra clase, esto puede
 provocar fallos en la gestión de memoria. Por eso se suelen marcar con weak, esto permite
 no hacer un cíclo de retención de memoria al indicar que esta variable puede perder la
 referencia a la que apunta si es necesario, para ello el protocolo deber heredar de AnyObject.

    protocol ProtocolName: AnyObject {}
    weak var delegate: ProtocolName?
 */


// Declaración protocolo
protocol DragonBallGame {
    var heroe: String { get }
    var villain: String { get }
    func startFight()
}

// Declaración protocolo delegado
protocol DragonBallDelegate: AnyObject {
    func fightDidStart(_ fighter: String, vs fighter2: String)
    func fightDidEnd(_ winner: String)
}

/* Clase que implementa el protocolo DragonBallGame y contiene
 el delegado al que "delega" ciertas funcionalidades
 */
class DragonBallZ: DragonBallGame {
    // Declaración de la variable del tipo del delegado, con
    // weak para evitar ciclos de retención de memoria.
    weak var delegate: DragonBallDelegate?

    var heroe: String {
        "Goku"
    }
    var villain: String {
        "Freezer"
    }

    func startFight() {
        // Se llama al delegado para transferir esta funcionalidad
        delegate?.fightDidStart(heroe, vs: villain)
        // Se obtiene el ganador
        guard let winner = [heroe, villain].randomElement() else { return }
        // Se "notifica" al delegado que finalizó la batalla
        delegate?.fightDidEnd(winner)
    }
}

/* Clase que implementa las funciones que DragonBallZ delega en otra clase
 con el protocolo DragonBallDelegate
 */
class DragonBallFight: DragonBallDelegate {
    func fightDidStart(_ fighter: String, vs fighter2: String) {
        print("Start fight: \(fighter) VS \(fighter2) will be hard!!!")
    }

    func fightDidEnd(_ winner: String) {
        print("The battle was incredible, in the end \(winner) won after an epic ending")
    }
}

// Instancia de la clase DragonBallZ
let dragonBallZ = DragonBallZ()
// Instancia de la clase DragonBallFight
let dragonBallFight = DragonBallFight()
// Se define el delegado de la clase DragonBallZ
dragonBallZ.delegate = dragonBallFight

// Se llama a la función para inciar el combate
dragonBallZ.startFight()
