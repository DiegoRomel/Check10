//
//  ViewController.swift
//  Check10
//
//  Created by ICMMAC02-29DE on 14/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfNumber: UITextField!
    @IBOutlet weak var result: UILabel!
    
    var numero = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Check10(_ sender: Any) {
        numero = Int(tfNumber.text!) ?? 0
        if numero > 10 {
            result.text = "Maior que 10"
        } else {
            result.text = "Menor que 10"
        }
        
    }
    
}

