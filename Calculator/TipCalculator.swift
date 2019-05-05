//
//  TipCalculator.swift
//  Calculator
//
//  Created by Buse ERKUŞ on 5.05.2019.
//  Copyright © 2019 Buse ERKUŞ. All rights reserved.
//

import Foundation


class TipCalculator{
    
    var amountBeforeTax: Double = 0.0
    var tipAmount: Double = 0.0
    var tipPercentage: Double = 0.0
    var totalAmount: Double = 0.0
    
    init(amountBeforeTax: Double, tipPercentage: Double) {
        self.amountBeforeTax = amountBeforeTax
        self.tipPercentage = tipPercentage
    }
    
    func calculateTip(){
        tipAmount = amountBeforeTax * tipPercentage
        totalAmount = tipAmount + amountBeforeTax
    }
    
}
