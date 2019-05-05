//
//  TipCalculatorViewController.swift
//  Calculator
//
//  Created by Buse ERKUŞ on 5.05.2019.
//  Copyright © 2019 Buse ERKUŞ. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {
    
    @IBOutlet weak var amountBeforeTaxTextField:  UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak  var tipPercentageSlider: UISlider!
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    @IBOutlet weak var eachPersonAmountLabel: UILabel!
    @IBOutlet weak var totalResultLabel: UILabel!
   
    var tipCalculator = TipCalculator(amountBeforeTax: 0, tipPercentage: 0.10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountBeforeTaxTextField.becomeFirstResponder()

    }
    
    func calculateBill(){
        tipCalculator.tipPercentage = Double(tipPercentageSlider.value) / 100.0
        tipCalculator.amountBeforeTax = (amountBeforeTaxTextField.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        updateUI()
    }
    func updateUI(){
        totalResultLabel.text = String(format: "$%0.2f",tipCalculator.totalAmount)
        let numberOfPeople: Int = Int(numberOfPeopleSlider.value)
        eachPersonAmountLabel.text = String(format: "$%0.2f",tipCalculator.totalAmount / Double(numberOfPeople))
    }
    
    
    @IBAction func tipSliderChanged(sender: Any){
        tipPercentageLabel.text = String(format:"Tip: %02d%%", Int(tipPercentageSlider.value))
        calculateBill()
    }
    @IBAction func numberOfSliderValueChanged(sender: Any){
        numberOfPeopleLabel.text = "Slit: \(Int(numberOfPeopleSlider.value))"
        calculateBill()
    }
   
    @IBAction func amountBeforeTaxTextfieldChanged(_ sender: Any) {
    calculateBill()
    }
    
}
