import Cocoa

enum RaizErro: Error {
    case abaixo, acima, naoEncontrado
}

func SquareRoot(_ number: Int) throws -> Int {
    
    if number < 1 {
        throw RaizErro.abaixo
    }
    
    if number > 10_000 {
        throw RaizErro.acima
    }
    
    for i in 1...10_000 {
     if  i * i == number {
            return i
        }
    }
    
    throw RaizErro.naoEncontrado
}

let number = 4

do {
   let raiz = try SquareRoot(number)
   print("A raiz quadrada do numero \(number) é = \(raiz)")
} catch RaizErro.acima {
    print("O numero \(number) esta acima do limite que é entre 1 e 10.000")
} catch RaizErro.abaixo {
    print("O numero \(number) está abaixo do limite que é entre 1 e 10.000")
} catch RaizErro.naoEncontrado {
    print("Não foi possível encontrar um valor para a raiz quadrada de \(number)")
}





