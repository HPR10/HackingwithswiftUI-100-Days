import Cocoa

// MARK: - Type Annotations(Anotações de tipos)

// inferência de tipo, o swift sabe que é uma String e um int
let nome = "Hugo"
var placar = 0

// Declarando explicitamente os tipos
let segundoNome: String = "Pinheiro"
var pontuacao: Double = 0
var usuario: [String: String] = ["Hugo": "Pinheiro"]
var conjuntos: Set<String> = Set(["universo", "reais", "racionais"])


// Formas de declarar arrays(Matrizes) explicitamente
var bebidas: [String] = ["fanta", "pepsi", "coca-cola"]
var times: [String] = [String]()
var tamanhos: [String] = []
var dogs = [String]()


// MARK: - Enums, aqui não utilizamos declaração explicita, um enum é um enum!

enum UISistema {
    case Claro, Escuro, Padrão
}
var estilo = UISistema.Escuro


// Declarando um constante sem valor
let nomes: String
// alguma logica
nomes = "@Hugo Pinheiro"
// outra logica
print(nomes)

 /* Obs: Seguir inferencia ou tipo de anotações depende do projeto onde trabalha,
  swift é uma liguagem segura e não deixa converter um String em um Int por exemplo
*/

