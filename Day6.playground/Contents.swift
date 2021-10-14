import Cocoa

// MARK: - LOOPS

var plataformas = ["MacOS", "tvOS", "iOS", "watchOS"]

for os in plataformas {
    print("A plataforma \(os) é criada em Swift")
}

for i in 1...10 {
    print("Essa é a tabuada de \(i)")
    
    for j in 1...10 {
        print(" \(j) x \(i) = \(j * i)")
    }
}

// código sem sentido
var nome = "Hugo"
for _ in 1..<2 {
    nome += " Pinheiro"
    
    for _ in 1..<2 {
        nome += " Raimundo"
    }
}
print(nome)




