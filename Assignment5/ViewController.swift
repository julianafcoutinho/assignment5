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
    
    var amounts: [String: Double] = [:]
    var  input = ""
    var currencyLogic = CurrencyLogic()
    
    @IBAction func convertBtn(_ sender: Any) {
        input = amtField.text ?? ""
        if (Int(input) != nil) {
            if (Int(input)! > 1000000) {
                amountLabel.text = "Amount is too large, please try smaller."
            }
            else { amountLabel.text = "Good amount!"
                amounts = currencyLogic.setAmount(Int(input)!)
                self.performSegue(withIdentifier: "toConverter", sender: self) }
        }
        
        
        else {amountLabel.text = "Invalid amount, please try again" }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConverter" {
            let convertNavigation = segue.destination as! ConverterViewController
            convertNavigation.currencyAmounts = amounts
        }
    }
    
    @IBAction func realSwitch(_ sender: UISwitch) {
        currencyLogic.setReal(sender.isOn)
    }
    @IBAction func yenSwitch(_ sender: UISwitch) {
        currencyLogic.setYen(sender.isOn)
    }
    @IBAction func dollarSwitch(_ sender: UISwitch) {
        currencyLogic.setDollar(sender.isOn)
    }
    @IBAction func euroSwich(_ sender: UISwitch) {
        currencyLogic.setEuro(sender.isOn)
    }
    @IBOutlet weak var amtField: UITextField!
    @IBAction func amountField(_ sender: Any) {
    }
    @IBOutlet weak var amountLabel: UILabel!
}

