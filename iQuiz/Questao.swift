import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let listaQuestao: [Questao] = [
    Questao(titulo: "Que ano estreiou o filme Matrix", respostas: ["1999", "2000", "1990"], respostaCorreta: 0),
    Questao(titulo: "Que ano estreiou o filme clube da luta", respostas: ["1999", "2000", "1990"], respostaCorreta: 0),
    Questao(titulo: "Que ano estreiou o filme titanic", respostas: ["1999", "2000", "1990"], respostaCorreta: 0),
    
]

