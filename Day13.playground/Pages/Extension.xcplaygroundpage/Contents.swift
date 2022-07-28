import Foundation

/* As extensões permitem adicionar funcionalidade a qualquer tipo de dados e alguns devs usam extensões para deixar o código mais organizado.
 As extensões podem ser usada para adicionar propriedades a tipos, só que apenas se forem propriedades computadas, não armazenadas.
 Extensões tem o objetivo de deixar seu código mais fácil de ler. escrever e de manter caso tenha que ser modificado.
 */

var quote: String = "       A verdade pura nunca é simples      "

// Removendo os espaços com uma extensão da fundations apple

let trimmed1 = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}
let trimmed2 = quote.trimmed()


// Função global

 func trim(_ string: String) -> String {
    string?.trimmingCharacters(in: .whitespacesAndNewlines)
}
let trimmed3 = trim(quote)
 
// MARK: - Extensões x Funções globais

/* 1 - Extensões são mais fácies de encontrar no autocomplete do Xcode
   2 -  Códigos com muitas funções globais são mais dificeis de ler e são um pouco confusos. Já extensões são agrupadas pelo tipo de dados que estão estendendo.
   3 - Como extensões é uma parte completa do tipo original, logo tem acesso total aos dados internos. Isso significa que as extensões podem utilizar propriedades e métodos marcados com controle de acesso(PRIVATE)
   4 - Extensões facilitam modificação de valores em vigor ela altera um valor ou propriedade diretamente em vez de devolver um novo.
 */

var quote2: String = "       A verdade pura nunca é simples      "
let trimmed4 = quote.trimmingCharacters(in: .whitespacesAndNewlines)

mutating func trim() {
    self = self.trimmed()
}
quote2.trim()

/* Boa prática: Em swift caso esteja devolvendo um novo valor em vez de alterá-lo é boa prática usar palavras como: trimmed()trim()edingreversed().
 obs: sorted() e sort() devolvem novas cópias e não mudam o valor em vigor
 
 */

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

// Criando inicializadores personalizados para Struct com extensions

struct Book {
    let title: String
    let page: Int
    let readingHours: Int
}
let lotr = Book(title: "lord of the kings", page: 1170, readinghours: 500)

// Com um init personalizado dentro de uma extension podemos ter tanto a inicialização padrão da struct quanto um personalizada.
extension Book {
    init(title: String, pageCount: Int) {
            self.title = title
            self.pageCount = pageCount
            self.readingHours = pageCount / 50
        }
}

// MARK: Quando você deve usar extensões em swift ?
/* Extensões ajudam na organização do código, existem várias maneiras de organizar o código, vamos focar em agrupamento de conformidade e agrupamento de propósito: A primeira é adicionar um protocolo a um tipo de extensão, adicionando todos os métodos dentro da extensões. E o agrupamemento de proposito é para criar extensões para tarefas específicas.
    Dividir um classe em extensões não diminui a mesma, apenas reorganizar o código para sua melhor leitura*/


