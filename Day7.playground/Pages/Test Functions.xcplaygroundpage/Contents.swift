func readUserInput() {
    while true {
        print("Escrevendo...")
        break
    }
}
readUserInput()


func applyfix() {
    print("The fix is applied")
}
applyfix()

func listMovies() {
    for i in 4...6 {
        print("Episode \(i)")
    }
}
listMovies()

func shareToTwitter() {
    print("Sharing....")
}
shareToTwitter()


func scoreGoal() {
    print("Goooollll!!!")
}
scoreGoal()

func printWelcome() {
    print("Hi there!")
}
printWelcome()


func shipOrders() {
    let orders = [1,2,3,4,5]
    for order in orders {
        print("Shipping order \(order)")
    }
}
shipOrders()

func sendMessage() {
    print("Seading message...")
}
sendMessage()

func playMusic() {
    print("Here's some Ed Sheeran")
}
playMusic()

func count(to: Int) {
    for i in 1...to {
        print("I'm counting: \(i)")
    }
}
count(to: 10)


func walkdogs(destination: String) {
    print("Let's go for a walk to \(destination).")
}
walkdogs(destination: "the park")


func square(numbers: [Int]) {
    for number in numbers {
        let square = number * number
        print("\(number) squared is \(square)")
    }
}
square(numbers: [1,2,3])


func buyCar(price: Int) {
    switch price {
    case 0...20_000:
        print("This seems cheap.")
    case 20_001...50_000:
        print("This seems like a reasonable car")
    default:
        print("what a beautiful car")
    }
}
buyCar(price: 50_001)
