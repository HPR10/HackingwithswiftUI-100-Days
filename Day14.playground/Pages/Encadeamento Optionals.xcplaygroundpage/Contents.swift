// Encadeamento de opcionais

// Basicamente verifica se tem um opcional dentro de um opcional de forma simplificada.
// Caso o opcional seja vazio nada acontece na primeira verificação em random

let names = ["hugo", "pinheiro", "raimundo", "santos"]
let guadrNames =  names.randomElement()?.uppercased() ?? "N/A"
print(guadrNames)
// Caso não tenha nenhum elemento no array o não roda o código.

// Cavando mais fundo segundo o paul só que eu já usei isso consumindo API no trampo. várias verificações de opcionais!
struct Book {
    let title: String
    let author: String?
}
var book: Book?
let author = book?.author?.first?.uppercased() ?? "A"
print(author)
