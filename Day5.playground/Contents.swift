import Cocoa

// MARK: - Condições Booleans verdadeiro(True) ou Falso(false)

let altura = 1.94
let idade = 30
let peso = 90

if altura > 1.90 {
    print("Você é muito alto!")
}

if idade >= 30 {
    print("Você é muito velho")
}

if peso < 89 {
    print("Você está muito magro")
}

let primeiroNome = "Pinheiro"
let segundoNome = "Raimundo"

if primeiroNome > segundoNome {
    print("\(primeiroNome) vs \(segundoNome)")
}
if primeiroNome < segundoNome {
    print("\(primeiroNome) vs \(segundoNome)")
}

var numeros = [1, 2, 3]
numeros.append(4)
if numeros.count > 3 {
    numeros.remove(at: 0)
}
print(numeros)

// ==
let cidade = "Angra"
if cidade == "Paraty" {
    print("Cidades iguais")
}

// !=
let nome = "HP"
if nome != "Anonimo" {
    print("Bem-vindo \(nome)")
}


// isEmpty detecta sequência vazia de caracter.
var cantor = "Taylor Swift"
if cantor.isEmpty {
    cantor = "Anonimo"
}
print("Bem vindo \(cantor)")


// MARK: Verificando Multiplas condições Booleanas
let idade2 = 15
if idade2 == 18 {
    print("Você já pode votar")
} else {
    print("Ainda não pode votar")
}

let temp = 25
if temp > 20 && temp < 30 {
        print("Hoje é um bom dia")
    }


let idadeJogador = 16
let permissao = true
// || é operação de ou(or)
if idadeJogador >= 18 || permissao {
    print("Pode Comprar o Jogo")
} else {
    print("Você não tem idade para jogar")
}

// MARK: - Condições com Enum
enum opcoesTransporte {
    case carro, moto, bicicleta, avião, barco
}
let transporte = opcoesTransporte.barco

if transporte == .avião || transporte == .moto {
    print("Boa escolha no transporte")
} else if transporte == .carro {
    print("Você vai pegar engarrafamento")
} else if transporte == .barco {
    print("Meio de transporte muito caro")
} else {
    print("Bicicleta é uma ótima opção")
}


// MARK: - Condições com Switch

enum clima {
    case verao, inverno, outuno, primavera, desconhecido
}

let estacoesDoAno = clima.inverno

// usando switch você evita o uso do if e else
switch estacoesDoAno {
case .verao:
    print("melhor estação do ano")
case .outuno:
    print("As folhas estão caindo")
case .inverno:
    print("Pegue um casaco")
case .primavera:
    print("Estão nascendo lindas flores")
case .desconhecido:
    print("O tempo está maluci")
}

// utilizando o default
let suaCidade = "metrópolis"

switch suaCidade {
case "Angra":
    print("Minha cidade Natal")
case "Rio De Janeiro":
    print("Cidade que me deu tudo na vida")
case "Porto":
    print("Local onde quero morar")
default:
    print("De onde você é?")
}

// fallthrough, imprime os casos que não são a condições desejada, após a condição ser encontrada.

var inteiro = 3
switch inteiro {
case 3:
    print("Quatro")
    fallthrough
case 4:
    print("Três")
    fallthrough
case 2:
    print("Dois")
    fallthrough
case 1:
    print("Um")
    fallthrough
default:
    print("Vazio")
}

// MARK: - Operador ternário, muito utilizado no swiftUI por isso é importante entender

let suaIdade = 18
let voto = suaIdade >= 18 ? "Yes" : "No"
print(voto)

let horas = 12
print(horas < 12 ? "Bom dia" : "Boa Tarde")

let nomes = ["Bud", "Pan", "Jao"]
let verificar = nomes.isEmpty ? "Nenhum nome encontrado" : "Temos \(nomes.count) nomes"
print(verificar)

enum Theme {
    case black, white
}
let theme = Theme.black
let background = theme == .black ? "Black" : "White"
print(background)










