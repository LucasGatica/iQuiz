//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by lucas gatica on 13/06/24.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao:Int?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBOutlet weak var percentuallabel: UILabel!
    
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurarLayout()
        configurarDesempenho()
        
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        botaoReiniciarQuiz.layer.cornerRadius=12.0
    }
    
    func configurarDesempenho(){
        
        guard let pontuacao = pontuacao else {return}
        
        resultadoLabel.text = "vc acertou \(pontuacao) de \(listaQuestao.count)"
        
        percentuallabel.text = "vc acertou \((pontuacao*100)/listaQuestao.count) %"
    }
    
}
