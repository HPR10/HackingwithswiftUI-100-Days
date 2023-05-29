import Foundation

// MARK: -- Como criar um deiniciador em swift
/* Um deiniciador é chamado em swift para destruir uma classe
 - Não podem contar parâmetro ou retonar dados.
 - O deiniciador será chamado sempre que a ultima instância de uma classe for destruída.
 - Deinicadores nunca são chamados diretamente eles são gerenciados pelo swift.
 - Struct não tem deiniciadores só classes
 */
 
// MARK: - O que é escopo ?
 /*- Resp: Contexto onde onde as informações estão disponíveis
 Ex: Variáveis dentro de funções, loops e e if(condições) só são acessadas dentro do seus escopo, que são chamados de escopo locais.
*/

func work() {
    var _: String //-> Essa variável não pode ser acessada fora do bloco dessa função
}

// MARK: - Inicializando e destruindo uma class

class User {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("O usuário \(id): está vivo")
    }
    
    deinit {
        print("O usuário \(id): faleceu")
    }
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("O usuário \(user.id): está no controle")
    users.append(user)
}
print("O Loop finalizado")
users.removeAll()
print("O Array vazio")


// MARK: - Por que classes tem deinicializadores e Struct não ?

/* - Em classes os denicializadores são utilizados para informar quando a ultima instância de uma classe foi destruída,
     Já me struct isso não é necessário pois a struct é destruido quando ela não existe mais, logo criando um estrutura
     dentro de um métodos caso os métodos terminaram de rodar a struct será destruida.
   - Classes tem um comportamento complexo de cópia que essas cópias podem existir em várias partes do programa,
     essas cópias apontam para o mesmo dado de memória, logo é complexo saber quando a instância de classe é realmente destruida.
   - Para a contagem de quantas cópias da classe tem no código o swift utiliza o ARC(Contador automático de referência)
     somando um na contagem encontrando uma cópia e subtraindo destruindo uma instância dessa cópia.
   - Em resumo struct não possui deint pois não é necessário sua utilizando a struct tem sua própri cópia de dado.
   - é uma boa prática e elegante colocar deint no final do código.
 */

