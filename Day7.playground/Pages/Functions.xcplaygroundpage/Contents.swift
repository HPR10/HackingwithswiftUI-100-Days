import Cocoa

// MARK: - O que função ?
/*
 Pedaços de código independente que executam determinada tarefa. Você dá um nome pra essa função e toda vez que ela for chamada no código o bloco de código dentro da função é utilizado.
 
 - Usamos funções para evitar código repetitivo.
 - Para quebrar um código muito extenso em funções menores.
 - Swift pode chamar novas funções a partir de funções como um jogo de lego e criar uma função grande.
 
 Dica: Se uma função tem mais de 6 parâmetros o ideal é verificar a possibilidade de criar funções menores.
 */

func greet(person: String) -> String {
    let greeting = "Hello," + person + "!"
    return greeting
}
print(greet(person: "HP"))

// MARK: - Reaproveitando código com funções

func bemVindo() {
    print("Olá, bem vindo ao meu mundo")
    print("Meu aplicativo é a sua casa")
}
bemVindo()

func tabuada(numero: Int, final: Int){
    for i in 1...final {
        print("\(numero) x \(i) = \(i * numero)")
    }
}
tabuada(numero: 10, final: 10)

//// MARK: - Devolvendo valores de funções
func Numeros() -> Int {
    return Int.random(in: 1...10)
}
var trocanumero = Numeros()
print(Numeros())
print(trocanumero)


func compararStrings(palavra1: String, palavra2: String) -> Bool {
    return palavra1.sorted() != palavra2.sorted()
}
print(compararStrings(palavra1: "abc", palavra2: "cba"))


func pitagoras2(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}
let y = pitagoras2(a: 3, b: 4)
print(y)


// MARK: - Devolver vários valores de funções

//utilizando Array, problemático para lembrar os nomes caso algo seja alterado.
func usuario2() -> [String] {
    ["Bud", "Pan", "Jao"]
}
var nome2 = usuario2()
print("Nome:\(nome2[0]) \(nome2[1]) \(nome2[2])")
nome2.sort()
print("Nome:\(nome2[0]) \(nome2[1]) \(nome2[2]) ")


//// utilizando dicionário, além dos dados do usuário temos que fornecer valores padrões.
func usuario3() -> [String: String] {
    [
        "primeiroNome": "Ariana",
        "segundoNome": "Grande"
    ]
}
let nome3 = usuario3()
print("Nome: \(nome3["primeiroNome", default: ""]) \(nome3["segundoNome", default: ""])")

// A melhor forma é utilizando tuplas
func usuario() -> (primeiroNome: String, segundoNome: String) {
    (primeiroNome: "Hugo", segundoNome: "Pinheiro")
}
let nome = usuario()
print("Nome: \(nome.primeiroNome) \(nome.segundoNome)")


// Nesta função podemos ocultar o return pois só temos um retorno e limpo. Sem variáveis, loops ou condições.
func Soma() -> Int {
    5 + 5
}
print(Soma())

// Aqui não podemos ocultar o return pois temos um interpolação com a veriável name na linha 93.
func greet2(name: String) -> String {
    if name == "Hugo Pinheiro" {
      return  "Que prazer querido!"
    } else {
     return  "Hello \(name)"
    }
}
print(greet2(name: "Hugo Pinheiro"))


// MARK: - Operador ternário brilha muito em swiftUi então aprende a codificar dessa forma.
func greet3(name: String) -> String {
     name == "Hugo Pinheiro" ? "Que prazer querido" : "Hello \(name)!"
}
print(greet3(name: "Adriano"))


func writeToLog(message: String) -> Bool {
    if message != "" {
        print("Log: \(message)")
        return true
    } else {
        return false
    }
}

// transformando a função acima em operador ternário.
func writeToLog2(message: String) -> Bool {
    message != "" ? true : false
}
print(writeToLog2(message: ""))



















