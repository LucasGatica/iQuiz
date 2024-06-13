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
        
        let usuarioAcertou = listaQuestao[numeroQuestao].respostaCorreta == sender.tag;
        
        
        if(usuarioAcertou){
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue:53/255, alpha:1.0)
            
            pontuacao+=1
            print("acertou")
        }else{
            sender.backgroundColor = UIColor(red: 211/255,green:17/255,blue:17/255, alpha:1)
        }
        
        if (numeroQuestao < listaQuestao.count-1){
            numeroQuestao+=1
            Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(iniciarPerguntas), userInfo: nil,repeats: false)
        }
        else{
            
            navegaParaTelaDesempenho()
        }
    }
    
    func navegaParaTelaDesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
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
        tituloQuestaoLabel.adjustsFontSizeToFitWidth = true

        tituloQuestaoLabel.textAlignment = .center
        
        for botao in respostas{
            botao.layer.cornerRadius = 12.0
         
        }
        
    }
    @objc func iniciarPerguntas(){

        tituloQuestaoLabel.text = listaQuestao[numeroQuestao].titulo
        for botao in respostas{
            let titulo = 
            listaQuestao[numeroQuestao]
                .respostas[botao.tag]
            
            botao.setTitle(titulo, for: UIControl.State.normal)
            botao.backgroundColor = UIColor(red: 116/255,green:50/255,blue:255/255, alpha:1)
            
        }
        
        
         
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as?
                DesempenhoViewController else {return}
        
        desempenhoVC.pontuacao = pontuacao
    }
    
}
