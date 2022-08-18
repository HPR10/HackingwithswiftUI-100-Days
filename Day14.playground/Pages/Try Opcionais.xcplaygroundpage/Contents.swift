// try deve ser usado muito raramente, encontrado em 3 situações comumente.
/* 1 - Em combinação para sair de uma função se a chamada retornar
   2 - Em combinação com coalesccção(??) para tentar fornecer um valor padrão sobre a falha.
   3 - Ao chamar qualquer função sem valor de retorno, quando não importa se teve sucesso ou não no retorno. 
 */
// Podemos tratar funções que só importa se foi bem sucedido ou não com optionais, caso sucesso devolve o valor do retorno caso falhe o opcional retorna zero Ex:

enum userError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws-> String { // Essa função sempre lança um erro.
    throw userError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous" // Retornando um valor padrão caso o optional retorne vazio.
print(user)
