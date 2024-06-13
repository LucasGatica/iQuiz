//
//  ViewController.swift
//  iQuiz
//
//  Created by lucas gatica on 09/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var botaoIniciaQuiz: UIButton!
    
    @IBAction func botaoPressionado(_ sender: Any) {
        print("o botao foi iniciado")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
        
    }
    
    func configuraLayout(){
        navigationItem.hidesBackButton =  true
        botaoIniciaQuiz
            .layer
            .cornerRadius = 12.0
        
    
    }


}

