import Cocoa

// MARK: - Declarando Array(Matriz) em swift, dentro do array só tem um tipo de dado.

var cachorros = ["Bud", "Pan", "Jao"]
var numeros = [1, 2, 3, 4, 5]
var temperatura = [32.0, 64.0, 128.0]

// Imprimindo na tela posições específicas do array

print(cachorros[0])
print(numeros[1])
print(temperatura[2])


// Adicionando elementos no array(Matriz)

numeros.append(6)
cachorros.append("Athena")
temperatura.append(50.0)

// Você pode adicionar elementos repetidos normalmente em matrizes

cachorros.append("Bud")
numeros.append(1)
temperatura.append(32.0)

// Forma explicita do tipo dos dados do array

var album = Array<String>()
album.append("Hugo")
album.append("Pinheiro")
album.append("Raimundo")


// métodos dos arrays
print(album.count)      //conta o número de elementos
album.sorted()          // Organiza a matriz em ordem crescente ou alfabetica
album.reverse()         // Inverte a matriz
album.contains("Hugo")  // Verifica se determinado elemento existe no array
album.remove(at: 2)     // Remove uma posição específica do array
album.removeAll()       // Remove todos os itens do array


// MARK: - DICIONÁRIO

var funcionario = [
    "nome": "Hugo",
    "profissao": "Programador",
    "localidade": "Rio De janeiro"
]

print(funcionario["nome", default: "desconhecido"])
print(funcionario["profissao", default: "desconhecido"])
print(funcionario["localidade", default: "desconhecido"])

// Dicionário com chave int e valor string
let olimpiadas = [
    2012: "Londres",
    2016: "Rio De Janeiro",
    2020: "Tokyo"
]
print(olimpiadas[2012, default: "desconhecido"])


// Declarando o dicionário explicitamente e subscrevendo
var cantores = [String: Int]()
cantores["Marilia Mendonça"] = 1
cantores["Tieri"] = 2
cantores["Gustavo Lima"] = 3
print(cantores)

// Subescrevendo dicionário
var arqInimigos = [String: String]()
arqInimigos["Batman"] = "Coringa"
arqInimigos["Superman"] = "Lex Luthor"

arqInimigos["Batman"] = "Pinguim"
print(arqInimigos)


// MARK: - Sets(Conjuntos) - Sets não aceitam dados duplicados como no array(Matrizes)
let paises = Set(["Brasil", "Argentina", "Colômbia", "Paraguai"])
// os conjuntos imprimem os dados sem um ordem lógica
print(paises)

// Sets(conjuntos) adicionam elementos de forma diferente dos arrays(Matrizes)
var Selecoes = Set<String>()
Selecoes.insert("Argélia")
Selecoes.insert("Dinamarca")
Selecoes.insert("Bolívia")
// os conjuntos imprimem os dados sem um ordem lógica
print(Selecoes)


// MARK: - Enums(Enumeração)

enum diasDaSemana {
    case Segunda, Terça, Quarta, Quinta, Sexta, Sabado, Domingo
}
var dia = diasDaSemana.Segunda
dia = diasDaSemana.Terça
dia = diasDaSemana.Quarta
print(dia)

// Podemos ocultar com . o nome do enum após declarar um vez o mesmo
var dias = diasDaSemana.Quinta
dias = .Sexta
dias = .Sabado
dias = .Domingo














