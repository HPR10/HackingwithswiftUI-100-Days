import UIKit

struct Car {
    let model: String
    let seats: Int
    private var march: Int
    
    init(model: String, seats: Int) {
        self.model = model
        self.seats = seats
        march = 1
    }
    
    mutating func gearUp() {
        if march < 10 {
            march += 1
        }
    }
    
    mutating func gearDown(){
        if march > 1 {
            march -= 1
        }
    }
}

var car = Car(model: "HBS", seats: 5)



