import UIKit
/*
 Class x Struct Swift
 - Class tem herança
 - Class é do tipo reference type
 - Class pode usar deinitializer
 - Class podem alterar variáveis
 - Class tem inicializadores manuais
 - Struct não podem alterar variáveis
 - Struct é do tipo value type
 - Struct tem incializadores automáticos
 - Ambos podem utilizar inicializadores personalizados
 - Ambos podem utilizar propriedades e métodos observadores e controle de acesso.
 */

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var newGame = Game()
newGame.score = 10

//MARK: - Herança

class Employee {
    var hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("Eu trabalho \(hours) horas por dia!")
    }
}

class Develop: Employee {
    func work() {
        print("Hoje eu trabalhei \(hours) horas")
    }
    // Para modificar um método na classe filho devemos usar override.
    override func printSummary() {
        print("Eu trabalho basicamente \(hours) horas por dia x vezes na semana!")
    }
}

class Manager: Employee {
    func work() {
        print("Eu fiquei em uma reunião \(hours) horas")
    }
}

let hugo = Develop(hours: 10)
let yasmin = Manager(hours: 20)
hugo.work()
yasmin.work()

let pinheiro = Develop(hours: 15)
pinheiro.printSummary()

// Essa classe pode hedar de outras só que não pode ser herdada.
final class GameShow {
    // Code
}

// MARK: - Inicializadores para classes

class Vehicle {
    let iseletric: Bool
    
    init(iseletric: Bool ) {
        self.iseletric = iseletric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(iseletric: Bool, isConvertible: Bool){
        self.isConvertible = isConvertible
        super.init(iseletric: iseletric)
    }
}
let teslaX = Car(iseletric: true, isConvertible: false)

// caso uma subclasse não tenha nenhum inicializador ela herda da classe pai.


// MARK: - Copiando Classes

/* Classes são referency type */

class User {
    var username = "Hugo"
}
var user1 = User() // -> user1 é uma instância da classe User
var user2 = user1

user2.username = "Taylor"

print(user1.username)
print(user2.username)

/* Mudando só o user2 o user1 também muda pois as classes tem esse recurso de referência, a cópia altera a original*/
/* Struct são value type*/

struct Name {
    var username = "HP"
}
var name1 = Name() // -> user1 é uma instância da classe Name
var name2 = name1

name2.username = "Pinheiro"

print(name1.username)
print(name2.username)


/* Alterando o name2 não afeta o name1 em uma struct */
/* Caso queira fazer uma cópia profunda em uma nova classe fazemos o código abaixo*/
class Data {
    var dataName = "HP"
    
    func copy() -> Data { // -> função para criar uma cópia legitima de uma classe
        let user = Data()
        user.dataName =  dataName
        return user
    }
}
var dataName1 = Data() // -> user1 é uma instância da classe Name
var dataName2 = dataName1

name2.username = "Pinheiro"

print(dataName1.dataName)
print(dataName2.dataName)






