import Cocoa

// MARK: - Reaproveitando código com funções

print("Olá, bem vindo ao meu mundo")
print("Meu aplicativo é a sua casa")


func bemVindo() {
    
    print("Olá, bem vindo ao meu mundo")
    print("Meu aplicativo é a sua casa")
}
bemVindo()


func tabuadas(numero: Int, fim: Int) {
    for i in 1...fim {
        print("\(i) x \(numero) é \(i * numero)")
    }
}
tabuadas(numero: 5, fim: 10)


// MARK: - Devolvendo valores de funções

func rolarDados() -> Int {
    return Int.random(in: 1...6)
}
let resultado = rolarDados()
print(resultado)
print(rolarDados())


func compararStrings(palavra1: String, palavra2: String) -> Bool {
    return palavra1.sorted() == palavra2.sorted()
}
compararStrings(palavra1: "abc", palavra2: "cba")


func pitagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}
// Função resumida
func pitagoras2(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}
let c = pitagoras(a: 3, b: 4)
print(c)

// MARK: - Devolver vários valores de funções

// utilizando Array, problemático para lembrar os nomes caso algo seja alterado.
func usuario2() -> [String] {
    ["Ariana", "Grande"]
}
let nome2 = usuario2()
print("Nome: \(nome2[0]) \(nome2[1])")

// utilizando dicionário, além dos dados do usuário temos que fornecer valores padrões.

func usuario3() -> [String: String] {
    [
        "primeiroNome": "Ariana",
        "segundoNome": "Grande"
    ]
}
let nome3 = usuario3()
print("Nome: \(nome3["primeiroNome", default: "Anonimo"]) \(nome3["segundoNome", default: "Anonimo"])")

// A melhor forma é utilizando tuplas
func usuario() -> (primeiroNome: String, segundoNome: String) {
    (primeiroNome: "Ariana", segundoNome: "Grande")
}
let nome = usuario()
print("Nome: \(nome.primeiroNome) \(nome.segundoNome)")















