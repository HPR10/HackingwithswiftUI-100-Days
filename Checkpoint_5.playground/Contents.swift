import UIKit

var luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]


// Filtre os números pares
let numerosPares = luckyNumbers.filter {$0 % 2 == 0}
print(numerosPares)

// Classificar a matriz em ordem crescente
luckyNumbers.sort()
print(luckyNumbers)

// mapeamento para o modelo de saída "7 is a lucky number"
let numbersMap = luckyNumbers.map {"\($0) is a lucky Number"}
print("Lucky Winners : \(numbersMap)")

// imprimindo a matriz linha a linha
numbersMap.map {print($0)}

