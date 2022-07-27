// Variação: 2
class User {
    var name = "Hugo"
}

let user = User()
user.name = "Paul"
print(user.name)
/* Nessa lógica mudamos o valor do atributo dentro da classe,
   mais a própria instância da classe não mudou,
   ela não pode ser alterada pois é uma constante
 */

// Variação: 4
class Data {
    var dataName = "Paul"
}
var dataUser  = Data()
dataUser.dataName = "Taylor"
dataUser = Data()
print(dataUser.dataName)
/* Como no caso acima tudo é variável podemos sobrescrever por cima para um outro objeto na memória*/

/* Variações em propriedades e instâncias
1 - Instância constante, propriedade constante – uma placa que sempre aponta para o mesmo usuário, que sempre tem o mesmo nome.
    Ex: Neste caso a sua propriedade não pode ser alterada em nenhum local no código.
2 - Instância constante, propriedade variável – uma placa que sempre aponta para o mesmo usuário, mas seu nome pode mudar.
    Ex: Neste caso você pode mudar o valor da propriedade se quiser e também sua propriedade pode ser mudada em qualquer local no código.
3 - Instância variável, propriedade constante – uma placa que pode apontar para diferentes usuários, mas seus nomes nunca mudam.
    Ex: Ex: Neste caso a sua propriedade não pode ser alterada em nenhum local no código.
4 - Instância variável, propriedade variável – uma placa que pode apontar para diferentes usuários, e esses usuários também podem alterar seus nomes.
    Ex: Neste caso podem ser modificados em qualquer local do código.
 
 
OBS: Classes não usam a palavra reservada mutating para alterar alguma instância, structs sim.
*/
/* Em estruturas constantes não podem ter suas propriedades alteradas mesmo que as propriedades tenham sido feitas variáveis. Pois as struct estão guardando seu valor diretamente e caso queria alterar algum valor você estará alterando a struct em si logo com let nada pode ser mudado. */
struct Name {
    var age = 18
}
var ageUser = Name() // Esse código não compila caso fosse um let nessa linha.
ageUser.age = 30
print(ageUser.age)

// MARK: - Por que as propriedades variáveis em classes constantes podem ser alteradas?
/* Difernça de mutabilidade entre classes e structs:
 1 - Classes variáveis podem ter propriedades variáveis alteradas
 2 - Classes constantes podem ter propriedades variáveis alteradas
 3 - Estruturas variáveis podem ter propriedades variáveis alteradas
 4 - Estruturas constantes não podem ter propriedades variáveis alteradas
 */

var number = 5 // caso aqui fosse uma constante(let) seria aplicado o conceito 4
number = 6

/* No exemplo acima atribuimos o valor 5 na variável number e abaixo removemos o 5 e colocamos o 6 em seu lugar. Assim funciona struct em swift mudando algo você está implicitamente destruindo a estrutura e a criando outra vez */
