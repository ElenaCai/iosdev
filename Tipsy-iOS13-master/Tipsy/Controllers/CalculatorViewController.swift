//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
  
    var tipValue = "10%"
    var tipValueNumber = 0.1
    var peopleNumber = 2
    var billTotal = Float(0)
    var calculateResult = Float(0)
    
    @IBAction func tipChanged(_ sender: UIButton) {
        tipValue = sender.currentTitle!
        
        if tipValue == "0%"{
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tipValueNumber = 0
        }
        
        if tipValue == "10%"{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            tipValueNumber = 0.1
        }
        
        if tipValue == "20%"{
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            tipValueNumber = 0.2
        }
        print(tipValueNumber)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        peopleNumber = Int(sender.value)
        splitNumberLabel.text = String(peopleNumber)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        billTotal = (Float(billTextField.text ?? "0") ?? 0)
        print(billTotal)
        calculateResult = Float(billTotal) * (1 + Float(tipValueNumber)) / Float(peopleNumber)
        print(calculateResult)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.perPerson = calculateResult
            destinationVC.tipValue = Float(tipValueNumber)
            destinationVC.people = peopleNumber
        }
    }
    
}

