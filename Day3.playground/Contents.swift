import Cocoa

// MARK: - Array(Matrizes)

// Coleções(Array, enum e dicionário) em Swift são específicos no tipo de dados que podem armazenar apenas um tipo por coleção.
// Array(Matrizes) armazenam vários valores do mesmo tipo e os valores podem ser iguais em várias posições.

var cachorros = ["Bud", "Pan", "Jao"]
var numeros = [1, 2, 3, 4, 5]
var temperatura = [32.0, 64.0, 128.0]

// Imprimindo na tela posições específicas do array com sintaxe subscrita.
print(cachorros[0])
print(numeros[1])
print(temperatura[2])

// MARK: Acessando e modificando um array

// Adicionando elementos no array(Matriz)
numeros.append(6)
cachorros.append("Athena")
temperatura.append(50.0)

// adicionando elementos repetidos normalmente em matrizes
cachorros.append("Bud")
numeros.append(1)
temperatura.append(32.0)

// Alternativa ao append utilizando o += para adicionar elementos.
numeros += [7, 8, 9, 10]
cachorros += ["Angel", "Thor"]

// aleterando elementos em determinada faixa de valores
temperatura[0...1] = [50.0, 100]

// Adicionando um índice específico na matriz
cachorros.insert("merlo", at: 0)

// Verificando com a propriedade booleana isEmpty se é vazio ou não a coleção.
if cachorros.isEmpty {
    print("Desculpe lista vazia")
} else {
    print("Temos lindos dogs na sua coleção")
}

// Coleções em swift são implementados como coleção genéricas consultar: https://docs.swift.org/swift-book/LanguageGuide/Generics.html
// Caso atribua coleções em uma variável

var criaturas = ["Fadas", "Elfos", "Goblins"] // coleção mutável
let terrenos = ["Ilha", "montanha", "floresta"] // coleção imutável

// Nota: É uma boa prática criar coleções imutáveis em todos os casos em que a coleção não precise mudar. Isso torna mais fácil para você raciocinar sobre seu código e permite que o compilador Swift otimize o desempenho das coleções que você cria.


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
album.removeLast()      // Remove o ultimo item do array
album.removeAll()       // Remove todos os itens do array


// Criando array com valor padrão
var threeDoubles = Array(repeating: 0.0, count: 3)
threeDoubles.append(5)
print(threeDoubles)

// Criando uma matriz e jogando duas dentro dela.
var anotherThreeDoubles = Array(repeating: 2.0, count: 5)
var sixDoubles = threeDoubles + anotherThreeDoubles
print(sixDoubles)

// Criando um array literal
var shoppinglist: [String] = ["Eggs", "Milk"]
// Com a inferência de tipo de swift você não precisa escrever o tipo da matriz
var shoppingList2 = ["Eggs", "Milk"]

// Iterando em um array
for n in numeros {
    print(n)
}
// iterando e pegando o index e seu valor de forma linda e elegante 😍
for (index, value) in numeros.enumerated() {
    print("Number \(index + 1): \(value)")
}
// Nota: Consultar https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html#ID121


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
// Utilizado quando a ordem dos elementos não importa e quando você que garantir que nenhum elemento se repita.
// Set(Conjuntos) tem que ser hashable para ser adicionado a um conjunto, ou seja o tipo deve ter uma forma de calcular um valor hash para si mesmo.
// Um valor hash é um valor que é o mesmo para todos os objetos que se comparam igualmente.
// TODO TIPO BÁSICO EM SWIFT É hashable consultar: https://developer.apple.com/documentation/swift/hashable

var paises = Set(["Brasil", "Argentina", "Colômbia", "Paraguai"]) // Caso o set seja let não podemos adicionar novos elementos.
print("letters is of type Set<Character> with \(paises.count) items.")

// Criando um conjunto com matriz literal
var name: Set<Int> = [1,2,3]
// Por causa da inferência de tipo Swift podemos declarar um set mais simplificado
var name2: Set = [0.0, 0.1,0.2] // Set de Double

// Acessando e modificando Set(Conjuntos)
print("O numero de nomes é \(name.count)!") //contando elemento no conjunto

if name.isEmpty {   // verificando se é vazio ou não
    print("Não temos nomes no momento")
} else {
    print("Temos \(name.count) nomes na lista")
}

paises.insert("Argélia") // Adicionando elemento ao Set
print(paises)

paises.remove("Brasil") // Removendo elemento do set
print(paises)

paises.contains("Paraguai") // Verificando se exsite determinado elemento retornar um booleano.

for p in paises { // Iterando sobre um conjunto
    print("\(p)")
}

for n in paises.sorted() {
    print("\(n)")
}

// Executando operações de conjunto DIAGRAMA DE VEEN

var dog: Set = ["bud", "pan", "jao"]
var cat: Set = ["laila", "cris"]
var wolf: Set = ["laila", "bud"]

dog.union(cat).sorted()
wolf.intersection(cat).sorted()
dog.symmetricDifference(cat).sorted()

// Definição de adesão e igualdade

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

cityAnimals.isDisjoint(with: farmAnimals) // Verificando valores comuns
farmAnimals == cityAnimals // verificando se são iguais
houseAnimals.isSubset(of: farmAnimals) // verificando se o primeiro conjunto está contido no segundo.

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














