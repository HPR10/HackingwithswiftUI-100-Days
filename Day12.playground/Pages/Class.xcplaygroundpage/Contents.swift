import UIKit
/*
 Class x Struct Swift
 - Class tem herança
 - Class é do tipo reference type
 - Class pode usar deinitializer
 - Class podem alterar variáveis
 - Class tem inicializadores manuais
 - Struct não podem alterar variáveis
 - Struct é do tipo value type
 - Struct tem incializadores automáticos
 - Ambos podem utilizar inicializadores personalizados
 - Ambos podem utilizar propriedades e métodos observadores e controle de acesso.
 */

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var newGame = Game()
newGame.score = 10










