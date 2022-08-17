// opcionais é uma forma de escrever código seguro e com previsibilidade como swift gosta significa que um certo dado pode ter valor ou não.
// Qualquer tipo de dados pode ser opcional em swift.
// um conjunto de inteiro, array ou string opcional não é o mesmo que um esses grupos não opcionais vazios.

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

// Desembrulhando opcionais em swift

if let marioOppsite = opposites["Mario"] { // caso passe um valor não existente nada é impresso no print.
    print("Mario opposite is \(marioOppsite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("the optional was empty")
}

// Testando a frase: "Swift não introduziu opcionais. Introduziu não-opcionais."

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
// Podemos desembrulhar number para utilizar normalmente utilizando o sombreamento em swift: usar o nome da variável no if let.
if let number = number {
    // print(square(number: number ?? 0)) // como number é opicional esse código só roda se eu dar um valor padrão pra number.
    print(square(number: number))
}



// Podemos desembrulhar number para utilizar normalmente utilizando o sombreamento em swift






