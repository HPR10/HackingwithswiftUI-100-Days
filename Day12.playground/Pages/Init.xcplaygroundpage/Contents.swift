// MARK: - Inicializadores para classes

class Vehicle {
    let iseletric: Bool
    
    init(iseletric: Bool ) {
        self.iseletric = iseletric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(iseletric: Bool, isConvertible: Bool){
        self.isConvertible = isConvertible
        super.init(iseletric: iseletric)
    }
}
let teslaX = Car(iseletric: true, isConvertible: false)
// caso uma subclasse não tenha nenhum inicializador ela herda da classe pai.
