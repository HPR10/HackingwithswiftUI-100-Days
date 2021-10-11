import Cocoa

// MARK: - Declarando variáveis e constantes Bool

// hasSuffix -> Verifica o final de uma String e retorna true or false.
let arquivos = "paris.jpg"
print(arquivos.hasSuffix(".jpg"))


let numeros = 24
print(numeros.isMultiple(of: 5))


let bomCachorro = true
let gatoMal = false

// Pode ser declarado assim desde que o resultado seja booleano
let ismultiple = 120.isMultiple(of: 3)

// MARK: - Invertendo valores Booleanos

var autenticado = false
autenticado = !autenticado
print(autenticado)

// togle é a mesma coisa de !
var autenticado2 = false
autenticado2.toggle()
print(autenticado2)


// MARK: - Concatenação de Strings

let PrimeiroNome = "Hugo"
let SegundoNome = "Pinheiro"
let nomeCompleto = PrimeiroNome + SegundoNome

let nome = "Athena"
let idade = "23 anos"
let combinar = nome + " tem " + idade

let contador = "1" + "2" + "3"

// Interpolação de Strings

let combinarNome = "O nome dela é \(nome) e sua idade é \(idade)"
print(combinarNome)

// É mais aconselhavél usar interpolação do que concatenação quando possível.

print("5 x 5'\(5 * 5)")



