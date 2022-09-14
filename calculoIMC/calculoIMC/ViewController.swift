//
//  ViewController.swift
//  calculoIMC
//
//  Created by ICMMAC02-29DE on 24/08/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var textFieldPeso: UITextField!
    
    @IBOutlet var Resultado: UILabel!
    @IBOutlet var textFieldAltura: UITextField!
    
    @IBOutlet var textResultado: UILabel!
    
    var peso = 0.0
    var altura = 0.0
    var resultado = 0.0
    
    @IBOutlet var IMCresultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ButtonCalcular(_ sender: Any) {
        
        peso = Double(textFieldPeso.text!) ?? 0.0
        altura = Double(textFieldAltura.text!) ?? 0.0
        resultado = peso / (altura * altura)
        if resultado < 18{
            IMCresultado.text = "magro"
        }
        else if resultado < 25{
            IMCresultado.text = "normal"
        }
        else if resultado < 35{
            IMCresultado.text = "gordo"
        }
        
        textResultado.text = "\(resultado)"
        
    }
    

}

