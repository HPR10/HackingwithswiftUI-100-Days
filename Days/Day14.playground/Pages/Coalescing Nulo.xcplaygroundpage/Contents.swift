// Coalescing dar um valor padrão caso o opcional estiver vazio.
// O operador de coalescing é o ??

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

// Retornando um item aleatório de uma matriz e garantir que o opicional retorno algo se tiver ou não.
let list = ["Bud", "Pan", "Jao"]
let pet = list.randomElement() ?? "N/A"

// Estrutura com uma propriedade opcional e desejo fornecer um valor padrão quando o mesmo faltar.

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Swift", author: nil)
let author = Book.author ?? "Default"
print(author)
