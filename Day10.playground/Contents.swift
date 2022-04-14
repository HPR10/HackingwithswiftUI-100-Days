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

// o que swift faz pelo capô para tomar atributos de valores diferentes válidos
var colaborador2 = funcionario.init(nome: "Josias", feriasRestante: 8)
// obs: Para atribuir um valor padrão a uma propriedade ela tem que ser uma variável, caso seja constante ela será removida completamente do inicializador.

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






