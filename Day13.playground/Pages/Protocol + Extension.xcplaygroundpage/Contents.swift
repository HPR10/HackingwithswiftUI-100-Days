// Os protocolos permitem definir contratos que os tipos de conformidade devem aderir, e as extensões nos permitem adicionar funcionalidade aos tipos existentes.

let list = ["Hugo", "Pinheiro", "Raimundo"]

if list.isEmpty == false {
    print("Elemetos do array: \(list)")
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if list.isNotEmpty {
    print("Elementos do array: \(list.count)")
}

//  podemos listar alguns métodos necessários em um protocolo e, em seguida, adicionar implementações padrão daqueles dentro de uma extensão de protocolo. Todos os tipos de conformidade, em seguida, começar a usar essas implementações padrão, ou fornecer o seu próprio, conforme necessário.

protocol Person {
    var name: String {get}
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello() // como está em conformidade a extension com o protocolo contendo o método satHello podemos usar chamar ele na struct.

// MARK: - Quando extension e protocolos são úteis em swift?

// Tanto extensões como protocolos são muitos utilizados no swift por isso falamos que a linguagem é orientada a protocolos.
// Usamos para adicionar funcionalidades diretamente aos protocolos logo não precisamos copiar a funcionalidade em muitas classes e estruturas.

let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) } // allSatisfy verifica se todos os números são iguais em algum aspecto.

let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }

// É claro que os desenvolvedores swift não querem escrever esse mesmo código de novo e de novo, então eles usaram uma extensão de protocolo:
// eles escreveram um único método que funciona em um protocolo chamado , que todos os arrays, conjuntos e dicionários estão de acordo.

