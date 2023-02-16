//
//  ViewController.swift
//  Assignment5
//
//  Created by Juliana on 2/15/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    var input = ""
    @IBAction func convertBtn(_ sender: Any) {
        input = amtField.text ?? ""
        if (Int(input) != nil) { amountLabel.text = "Good amount!" }
        else {amountLabel.text = "Invalid amount, please try again" }
    }
    
    @IBOutlet weak var amtField: UITextField!
    @IBAction func amountField(_ sender: Any) {
    }
    @IBOutlet weak var amountLabel: UILabel!
}

