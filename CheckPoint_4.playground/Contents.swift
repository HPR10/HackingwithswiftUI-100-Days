import Cocoa

enum RaizErro: Error {
    case abaixo, acima, naoEncontrado
}

func raizQuadrada(of number: Int)  throws -> Int {
    if number < 1 {
        throw RaizErro.abaixo
    }
    
    if number > 10000 {
        throw RaizErro.acima
    }
    for i in 1...10000 {
        if i * i == number {
            return i
        }
    }
    
    throw RaizErro.naoEncontrado
}

let number = 25

do {
    let root = try raizQuadrada(of: number)
    print("The square root of \(number) is \(root)")
} catch RaizErro.abaixo {
    print("Sorry, \(number) is too low - please specify a number from 1 through 10.000")
} catch RaizErro.acima {
    print("Sorry, \(number) is too high - please specify a number from 1 through 10.000")
} catch RaizErro.naoEncontrado {
    print("Sorry, we could not find an integar square root for \(number)")
} catch {
    print("Sorry, there was a problem")
} 



