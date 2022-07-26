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
