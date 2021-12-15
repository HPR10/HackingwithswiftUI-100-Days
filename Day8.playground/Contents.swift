import Cocoa

func tabuada(for number: Int, end: Int ) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}
tabuada(for: 2, end: 10)

// MARK: - Atribuindo valores padrões em parâmetros. Caso na chamada da função não seja passado nada é atribuido o valor padrão do parâmetro.

func tab(number: Int, end: Int = 10) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}
tab(number: 3)

// MARK: - Quando Atribuir parâmetros padrões para funções.

func dindDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false){
    //code
}
dindDirections(from: "London", to: "Glasgow") // Definindo dois parâmetros e utilizando dois default
dindDirections(from: "London", to: "Glasgow", route: "snenic") // Definindo 3 e um defauult
dindDirections(from: "London", to: "Glasgow", route: "snenic", avoidHighways: true) // Definindo todos



// MARK: - Swift aloca memória suficiente para um array automaticamente à medida que ele cresce e liberar espaço de memória após exclusão dos dados.

var list = ["Bud", "Pan", "jao", "Athena"]
print(list.count)
list.removeAll(keepingCapacity: true) // Evita a liberação dos elementos em memória.
print(list.count)


// MARK: - Tratando erros em funções

enum PasswordError: Error {
    case obvious, weaks
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.weaks
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count >= 8 {
        return "OK"
    }
    else if password.count >= 16 {
        return "Good"
    }
    else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.weaks {
    print("weak password please change password")
} catch PasswordError.obvious {
    print("password very obvious please change")
} catch {
    print("There was an error")
}

