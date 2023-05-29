import Foundation

// MARK: - Varíaveis

var nome = "HP"
nome = "Athena"
nome = "Zeus"
// variáveis podem ser modificadas várias vezes.


// MARK: - Constants
let character = "Pinheiro"
// Uma constante não pode ser modificada.


//Print
var pessoa = "Bud"
print(pessoa)

pessoa = "Pan"
print(pessoa)

pessoa = "Jão"
print(pessoa)


// MARK: - Camel Case(Cado de Camelo)
let primeiroNome = "Hugo"
let meuCachorro = "Jão"
let meuSonho = "Ser um bom dev ios"
// Por convensão dos programadores variáveis com dois nomes são declaradas dessa forma letra minúscula no começo e segunda palavra com letra maiúscula.


// MARK: Formas de declarar -> String
let ator = "Lázaro Ramos"
let nomeDoArquivo = "sol.jpg"
let resultado = "👨🏽‍💻 Desenvolvedor 🇧🇷"
let notas = "Lembrar de comprar arroz no \"Mercado\" e ir na padaria"

let filme = """
Um dia
da vida de um
engenheiro da apple
"""
/* OBS: Não há limites no tamanho na String, só que swift não gosta de quebrar suas linhas para ficar tudo certinho. logo sendo necessário """ """.
*/


//Métodos (.count, .uppercased, .hasPrefix(), .hasSuffix())

// Contando quando caracteres tem uma variável
let contador = ator.count
print(contador)

// transformando toda a string em letra maiuscula
let letraMaiuscula = notas.uppercased()
print(letraMaiuscula)

// Verificando se um variável/constante começa com determinada String
let consultarInicio = filme.hasPrefix("Um dia")
print(consultarInicio)

// Veridicando se uma variável/constante termina com determinada String
let consultarFinal = filme.hasSuffix("apple")
print(consultarFinal)

// MARK: - Formas de declarar numeros inteiros -> Int
let numeroGrande = 100000000
let numeroGrandeLegivel = 100_000_000
let numeroGrandeLegivel2 = 1_00_00_00___00
// Formas de declarar o mesmo número inteiro

let numero = 10

// Criando inteiros a partir de outros inteiros
let subtração = numero - 2
let soma = numero + 20
let multiplicação = numero * 2
let divisão = numero / 2
let NumeroAoQuadrado = numero * numero

// Declarando um inteiro e atribuindo um soma a ele mesmo.
var valor = 10
valor += 5 //valor = valor +5

valor *= 2
print(valor)
valor -= 10
print(valor)
valor /= 2
print(valor)

// Metódo que verifica se um número é multiplo de outro número

let numeroAleatorio = 120
print(numeroAleatorio.isMultiple(of: 2))


// MARK: - Declarando números Decimais(Ponto Flutuante) -> Double.

let numerosDecimais = 0.1 + 0.2
print(numerosDecimais) //0.3000000000000004
// Somar numeros decimais é problemático, pois o máquina armazena tudo em binário e fica complexo passar o valor matemático exatamente.


// Não podemos fazer operações matemática entre int e doubles sem converter algum deles.
let a = 1
let b = 1.0
let c = a + Int(b) //Convertendo um tipo
print(c)

// Algumas declaração de doubles
let double1 = 3.1
let double2 = 30000.0000
let double3 = 3.0

// Decimais ou ponto Flutuantes aceitam operações como os inteiros
var operacaoDecimais = 10.0
operacaoDecimais += 5.0
operacaoDecimais -= 4.5
operacaoDecimais *= 2.0
operacaoDecimais /= 5.0





















 
 






