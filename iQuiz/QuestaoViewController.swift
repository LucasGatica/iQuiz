//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by lucas gatica on 12/06/24.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao:Int = 0
    var numeroQuestao:Int = 0
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    @IBOutlet var respostas: [UIButton]!
    
    @IBAction func RespostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iniciarPerguntas()
        configurarLayout()
      
    
        
    }
    
    func configurarLayout(){
        navigationItem
            .hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        
        for botao in respostas{
            botao.layer.cornerRadius = 12.0
         
        }
        
    }
    func iniciarPerguntas(){
        tituloQuestaoLabel.text = listaQuestao[numeroQuestao].titulo
        
        
         
    }
    
}
