/* Protocolos e Extensões
 - As extensões de protocolos permitem acabar com as grandes complexidades de herança,substituindo as mesma por protocolos menores e mais simples. */

// Tony Hoare disse: "dentro de cada grande programa, há um pequeno programa tentando sair"
/* Protocols é um contrato que permite definir tipos de funcionalidades que certo tipo de dado suporte e
 o swift garante que o resto do nosso código siga essa regra */

/* Imagine você dev escrever uma função com 3 paramêtros diferentes, como abaixo:
func trajeto(distancia: Int, transporte: Carro) {}
func trajeto(distancia: Int, transporte: Trem) {}
func trajeto(distancia: Int, transporte: Onibus){} */

/* Podemos abstrir essas três funcões em um protocolo */

protocol Vehicle {
    var name: String {get} // notação de tipo get e set é necessário pois em protocolos não é aceito valor padrão em propriedades.
    var currentPassengers: Int {get set} // caso passe um let aqui no get e set não é possível usar propriedade computada nos métodos abaixo.
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

/* Criando classes e estruturas em conformidade com protocolos*/

struct Car: Vehicle {
    var name = "Car" // propriedade computada
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
    // podemos adicionar novos métodos além dos obrigatórios pelo protocolo
    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    var name = "Bicycle" // propriedade computada
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

func commute(distance: Int, using vehicle: Vehicle /*car*/) { // Se passar o proprio protocolo como parâmetro em using vehicle, essa função pode ser chamada com qualquer tipo de dados desde que esteja em conformidade com o protocolo.
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

getTravelEstimates(using: [car, bike], distance: 150)

/* Notas:  Você pode se conformar com quantos protocolos precisar, apenas listando-os um a um separados com uma vírgula. Se você precisar subclasse algo e se adequar a um protocolo, você deve colocar o nome da classe dos pais em primeiro lugar, em seguida, escrever seus protocolos depois.*/

// MARK: - Por que Swift precisa de protocolos ?
/* protocolos definem os atributos básicos para uma struct, classe ou enem devem ter. Na prática seria tratar essas estruturas para receber dados de forma mais geral. Em vez de dizer "este método deve aceitar um objeto", podemos dizer que "este método pode aceitar qualquer coisa que esteja em conformidade com o protocolo*/


protocol Purchaseable {
    var name: String { get set }
}

struct Book {
    var name: String
}


struct Movie: Purchaseable {
    var name: String
    var actors: String
}

struct Coffee: Purchaseable {
    var name: String
    var type: String
}

func buy(_ item: Purchaseable) { // o parâmetro item imprime qualquer name de struct em conformidade com o protocolo Purchaseable.
    print("I'm buying \(item.name)")
}

