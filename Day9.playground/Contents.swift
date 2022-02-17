import Cocoa

func greetUser() {
    print("Hi there!")
}
greetUser()

var greetCopy = greetUser
greetCopy()

// MARK: - CLOUSURE

let sayHello = {
    print("Olá, Pessoas!")
}
sayHello()

// Clousures com parâmetros

let myName = { (name: String) -> String in
    "Olá \(name)!"
}
myName("Hugo")


// Pensar que função tem tipos ajuda a entender Clousures.

var greetCopy2: () -> Void = greetUser

/* 1. O parenteses vazio diz que a função não tem parâmetros.
   2. A seta aponta o tipo de retorno da função.
   3. Void significa "nada"
*/

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonumous"
    }
}
// nomes de parâmetros externos só importam quando estamos chamando uma função diretamente, não quando criamos um fechamento ou quando pegamos uma cópia da função primeiro.

let data: (Int) -> String = getUserData  //or getUserData(for:)
let user = data(1989)
print(user)

// Sem fechamentos
let team = ["Gloria", "Fresno", "NxZero", "Hevo84", "Strike"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool  {
    if name1 == "Fresno" {
        return true
    } else if name2 == "Fresno"{
        return false
    }
    return name1 < name2
}

// Com fechamentos
let captainFirsTeam = team.sorted(by: captainFirstSorted)
print(captainFirsTeam)

// Somos capazes de criar clousures armazenando dentro de variáveis e constantes.
let sayHello2 = {
    print("Hi there!")
}
sayHello2()

// Podemos também passar funções para outras funções
let capitainFirstTeam2 = team.sorted(by: captainFirstSorted)


// in marca o inicio do código da clousure.
let captainFirstTeam2 = team.sorted(by: {(name1: String, name2: String) -> Bool in
    if name1 == "Hugo" {
        return true
    } else if name2 == "Hugo" {
        return false
    }
    return name1 < name2
})

// Ocultando paramêtros e retorno na clousure
let captainFirstTeam3 = team.sorted {a, b in
    if a == "Hugo" {
        return true
    } else if b == "Hugo" {
        return false
    }
    return a < b
}

let reverseTeam = team.sorted {$0 > $1}






// https://www.hackingwithswift.com/quick-start/beginners/how-to-use-trailing-closures-and-shorthand-syntax


