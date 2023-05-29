import UIKit

/*
 private - use para "não deixe que nada fora da estrutura"
 fileprivate - use para "não deixe que nada fora do arquivo atual"
 public - use para "deixe qualquer um, em qualquer lugar"
 */
struct BankAccount {
    
// Controle de acesso ao passar private a variável não pode ser acessada ou modificada de fora da Struct
private var funds = 0

    mutating func deposit(amount: Int) {
    funds += amount
}

    mutating func withdraw(amount: Int) -> Bool {
    if funds > amount {
        funds -= amount
        return true
    } else {
        return false
        }
    }
}


var account = BankAccount()
account.deposit(amount: 100)
let sucess = account.withdraw(amount: 200)

if sucess {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

// MARK: - Propriedades de métodos estáticos

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)


struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

