// Desembrulhando opcionias com Guard.

// guard é usado para verificar as entradas da função são válidas e se o a verificação passar e o opcional tiver um valor dentro, você pode usar após o termino do código. No meu entendimento em outro escopo.

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing Input")
        // verificando a função
        return
    }
    // usando guadr acesso number fora do bloco.
    print("\(number) x \(number) is \(number * number)")
}
