import Foundation

// Struct básica com uma função sem parâmetros
struct Album {
    let title: String
    let year: Int
    let artist: String

func printAlbum() {
    print("\(title) \(year) by \(artist)")
    }
}
// Atribuindo a instancia a uma variável
let red = Album(title: "Red", year: 8, artist: "Taylor")
let fever = Album(title: "I fever", year: 18, artist: "Panic at the disco")

// Print de algum parametro específico
print(red.title)
print(fever.artist)

// print chamando a função
red.printAlbum()
fever.printAlbum()

// Alterando valores das propriedades da Struct
struct funcionario {
    // variáveis e constantes dentro de estruturas são chamadas de propriedades
    let nome: String
    var feriasRestante: Int

    // funções dentro de estruturas são chamadas de métodos
    mutating func tirarFerias(days: Int) {
        if feriasRestante > days {
            feriasRestante -= days
            print("Saiu de férias")
            print("Dias Restantes: \(feriasRestante)")
        } else {
            print("Ops! não há dias suficientes restantes")
        }
    }

}
var colaborador = funcionario(nome: "Hugo Pinheiro", feriasRestante: 15)
colaborador.tirarFerias(days: 5)
print(colaborador.feriasRestante)

var colaborador1 = funcionario(nome: "André", feriasRestante: 10)

/*o que swift faz pelo capô para tomar atributos de valores diferentes válidos
var colaborador2 = funcionario.init(nome: "Josias", feriasRestante: 8)
obs: Para atribuir um valor padrão a uma propriedade ela tem que ser uma variável, caso seja constante ela será removida completamente do inicializador. */

// - MARK: Propriedades computadas e valores dinâmicos

struct Colaborador2 {
    let name: String
    var feriasAlocadas = 14
    var feriasTiradas = 0

    // a variável calcula dinamicamente e guarda o valor do calculo da linha 63
    var feriasRestantes: Int {
        feriasAlocadas - feriasTiradas
    }
}
var pessoa = Colaborador2(name: "Gamarra", feriasAlocadas: 14)
pessoa.feriasTiradas += 4
print(pessoa.feriasRestantes)

// quando adicionamos dias pra ferias tiradas a variável guarda o valor anterior calculado.
pessoa.feriasTiradas += 3
print(pessoa.feriasRestantes)

// Código otimizado

struct Colaborador3 {
    let name:String
    var feriasAlocadas = 14
    var feriasTiradas = 0

    var feriasRestantes2: Int {
        get {
            feriasAlocadas - feriasTiradas
        }

        set {
            feriasAlocadas = feriasTiradas + newValue
        }
    }
}

var pessoa2 = Colaborador3(name: "Hugo", feriasAlocadas: 14)
pessoa2.feriasTiradas += 4
pessoa2.feriasRestantes2 = 5
print(pessoa2.feriasAlocadas)

/* MARK: - Observadores de propriedades - trechos de códigos executados quando as propriedades mudam. didSet é um observador que executa quando a propriedade acabou de mudar e willSet é um observador para correr antes da propriedade mudar */

struct Game {
    var score = 0
}
var game = Game()
game.score += 10
print("Novo Score é \(game.score)")
game.score -= 3
print("Novo Score é \(game.score)")
game.score += 1

struct Game2 {
    var score = 0 {
        didSet {
            print("O novo Score é \(score)")
        }
    }
}
var game2 = Game2()
game2.score += 10
game2.score -= 3
game2.score += 1


struct App {
    var contacts = [String]() {
        willSet {
            print("O valor atual é \(contacts)")
            print("O novo valor será \(newValue)")
        }

        didSet {
            print("Agora existem \(contacts.count)")
            print("O valor antigo era \(oldValue)")
        }
    }
}
var app = App()
app.contacts.append("HP")
app.contacts.append("UX")
app.contacts.append("LZ")

// MARK: - Criando inicializadores personalizados - A regra aqui é todas as propriedades tem que ter um valor quando o inicializador terminar.

// incializador padrão - inicializador de memberwise
struct Player {
    var age:  Int
    var name: String
}
var player = Player(age: 2, name: "HP")

struct Player2 {
    var age2: Int
    var name2: String
    
    init(age: Int, name: String) {
        self.age2 = age
        self.name2 = name
    }
}

struct Player3 {
    var name: String
    var number: Int
    
    init(name2: String) {
        self.name = name2
        number = Int.random(in: 1...99)
    }
}
let player3 = Player3(name2: "Hugo")
print(player3.number)








