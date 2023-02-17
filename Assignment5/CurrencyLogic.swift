//
//  CurrencyLogic.swift
//  Assignment5
//
//  Created by Juliana on 2/16/23.
//

import Foundation

struct CurrencyLogic {
    var realSwitch: Double = 1.0
    var yenSwitch: Double = 1.0
    var dollarSwitch: Double = 1.0
    var euroSwitch: Double = 1.0
    var originalAmount : Int = 0
    var allAmounts: [String: Double] = [:]
    let realRate: Double = 5.22
    let yenRate: Double = 134.17
    let dollarRate: Double = 1.35
    let euroRate: Double = 0.94
    
    
    mutating func setReal(_ switchValue: Bool) {
        if switchValue {
            realSwitch = 1.0
        }
        else {
            realSwitch = 0.0
        }
    }
    
    mutating func setYen(_ switchValue: Bool) {
        if switchValue {
            yenSwitch = 1.0
        }
        else {
            yenSwitch = 0.0
        }
    }
    
    mutating func setDollar(_ switchValue: Bool) {
        if switchValue {
            dollarSwitch = 1.0
        }
        else {
            dollarSwitch = 0.0
        }
    }
    
    mutating func setEuro(_ switchValue: Bool) {
        if switchValue {
            euroSwitch = 1.0
        }
        else {
            euroSwitch = 0.0
        }
    }
    
    mutating func setAmount(_ amount: Int) -> Dictionary<String, Double>  {
        allAmounts["USD"] =  (Double(amount))
        allAmounts["BRL"] = realSwitch * realRate * allAmounts["USD"]!
        allAmounts["JPY"] = yenSwitch * yenRate * allAmounts["USD"]!
        allAmounts["CAD"] = dollarSwitch * dollarRate * allAmounts["USD"]!
        allAmounts["EUR"] = euroSwitch * euroRate * allAmounts["USD"]!
        return allAmounts
   
    }
    

    
    
    
}
