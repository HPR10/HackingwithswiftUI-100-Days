import Cocoa

// MARK: - FOR LOOP
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

var nome = "Hugo"
for _ in 1..<2 {
    nome += " Pinheiro"
    
    for _ in 1..<2 {
        nome += " Raimundo"
    }
}
print(nome)


for i in 1...5 {
    print("Contando de 1 até 5: \(i)")
}


var letra = "Juro café da manhã preparar"
for _ in 1...5 {
    letra += " Consigo um outro nó com alguém"
}
print(letra)


// MARK: - WHILE
var contador = 10
while contador > 0 {
    print("\(contador)..")
    contador = contador - 1
}
print("Blast Off")


var dado = 0
while dado != 20 {
    dado = Int.random(in: 1...20)
    print("O Valor do dado nessa rodada é \(dado)")
}
print("Ataque crítico")


// Pulando itens no loop

let arquivos = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]
for arquivo in arquivos {
    if arquivo.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Arquivo Encontrado: \(arquivo)")
}

let numeroUm = 3
let numeroDois = 10
var multiplos = [Int]()
for i in 1...100_000 {
    if i.isMultiple(of: numeroUm) && i.isMultiple(of: numeroDois) {
        multiplos.append(i)
        
        if multiplos.count == 10 {
            break
        }
    }
}
print(multiplos)
