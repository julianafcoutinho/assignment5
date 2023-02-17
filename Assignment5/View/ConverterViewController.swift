//
//  ConverterViewController.swift
//  Assignment5
//
//  Created by Juliana on 2/16/23.
//

import UIKit

class ConverterViewController: UIViewController {
    var currencyAmounts: [String: Double] = [:]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        originalAmount.text! = String(currencyAmounts["USD"] ?? 0)
        if(currencyAmounts["BRL"] == 0) {
            realStack.isHidden = true
        }
        else {
            realAmount.text! = String(format: "%.2f", currencyAmounts["BRL"] ?? 0) }
        if(currencyAmounts["JPY"] == 0) {
            yenStack.isHidden = true
        }
        else {
            yenAmount.text! = String(format: "%.2f", currencyAmounts["JPY"] ?? 0) }
        if(currencyAmounts["CAD"] == 0) {
            dollarStack.isHidden = true
        }
        else {
            dollarAmount.text! = String(format: "%.2f",currencyAmounts["CAD"] ?? 0) }
        
        if(currencyAmounts["EUR"] == 0) {
            euroStack.isHidden = true
        }
        else {euroAmount.text! = String(format: "%.2f", currencyAmounts["EUR"] ?? 0)}

    
    }
    
    @IBOutlet weak var realStack: UIStackView!
    @IBOutlet weak var yenStack: UIStackView!
    @IBOutlet weak var originalAmount: UILabel!
    @IBOutlet weak var dollarStack: UIStackView!
    
    @IBOutlet weak var euroStack: UIStackView!
    @IBOutlet weak var realAmount: UILabel!
    
     @IBOutlet weak var yenAmount: UILabel!
    
    @IBOutlet weak var dollarAmount: UILabel!
    
    @IBOutlet weak var euroAmount: UILabel!
    
    @IBAction func returnButton(_ sender: Any) {
        dismiss(animated: true)
    }
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
