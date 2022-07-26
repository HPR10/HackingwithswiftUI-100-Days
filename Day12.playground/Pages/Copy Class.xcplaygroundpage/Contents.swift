// MARK: - Copiando Classes

/* Classes são referency type */

class User {
    var username = "Hugo"
}
var user1 = User() // -> user1 é uma instância da classe User
var user2 = user1

user2.username = "Taylor"

print(user1.username)
print(user2.username)

/* Mudando só o user2 o user1 também muda pois as classes tem esse recurso de referência, a cópia altera a original*/
/* Struct são value type*/

struct Name {
    var username = "HP"
}
var name1 = Name() // -> user1 é uma instância da classe Name
var name2 = name1

name2.username = "Pinheiro"

print(name1.username)
print(name2.username)


/* Alterando o name2 não afeta o name1 em uma struct */
/* Caso queira fazer uma cópia profunda em uma nova classe fazemos o código abaixo*/
class Data {
    var dataName = "HP"
    
    func copy() -> Data { // -> função para criar uma cópia legitima de uma classe
        let user = Data()
        user.dataName =  dataName
        return user
    }
}
var dataName1 = Data() // -> user1 é uma instância da classe Name
var dataName2 = dataName1

name2.username = "Pinheiro"

print(dataName1.dataName)
print(dataName2.dataName)
