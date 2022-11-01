//
//  ViewController.swift
//  CalculatorVolodymyr
//
//  Created by Volodymyr Navorotskyi on 10/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    var newClick = true
    func addNumbersToOutputLabel(number: String) {
        var textNumber = String(outputLabel.text!)
        if newClick {
            textNumber = ""
            newClick = false
        }
        
        textNumber = textNumber + number
        outputLabel.text = textNumber
    }
    
    @IBAction func butZero(_ sender: Any) {
        addNumbersToOutputLabel(number: "0")
    }
    
    @IBAction func butDot(_ sender: Any) {
        addNumbersToOutputLabel(number: ".")
    }
    
    @IBAction func butOne(_ sender: Any) {
        addNumbersToOutputLabel(number: "1")
    }
    
    @IBAction func butTwo(_ sender: Any) {
        addNumbersToOutputLabel(number: "2")
    }
    
    @IBAction func butThree(_ sender: Any) {
        addNumbersToOutputLabel(number: "3")
    }
    
    @IBAction func butFour(_ sender: Any) {
        addNumbersToOutputLabel(number: "4")
    }
    
    @IBAction func butFive(_ sender: Any) {
        addNumbersToOutputLabel(number: "5")
    }
    
    @IBAction func butSix(_ sender: Any) {
        addNumbersToOutputLabel(number: "6")
    }
    
    @IBAction func butSeven(_ sender: Any) {
        addNumbersToOutputLabel(number: "7")
    }
    
    @IBAction func butEight(_ sender: Any) {
        addNumbersToOutputLabel(number: "8")
    }
    
    @IBAction func butNine(_ sender: Any) {
        addNumbersToOutputLabel(number: "9")
    }
    
    
    var operation = "+"
    var numberOne:Double?
    
    @IBAction func butDivision(_ sender: Any) {
        
        operation = "/"
        numberOne = Double(outputLabel.text!)
        newClick = true
    }
    
    
    @IBAction func butMultiplication(_ sender: Any) {
        operation = "*"
        numberOne = Double(outputLabel.text!)
        newClick = true
    }
    
    @IBAction func butSubttraction(_ sender: Any) {
        
        operation = "-"
        numberOne = Double(outputLabel.text!)
        newClick = true
    }
    
    @IBAction func butAddition(_ sender: Any) {
        
        operation = "+"
        numberOne = Double(outputLabel.text!)
        newClick = true
    }
    
    @IBAction func butClean(_ sender: Any) {
        outputLabel.text = "0"
        newClick = true
    }
    
    @IBAction func butMinusPlus(_ sender: Any) {
        
        var textNumber = String(outputLabel.text!)
        
        textNumber = "-" + textNumber
        outputLabel.text = textNumber
        
    }
    
    @IBAction func butPercent(_ sender: Any) {
        
        var numberOne = Double(outputLabel.text!)
        
        numberOne = numberOne!/100.0
        outputLabel.text = String(numberOne!)
        newClick = true
    }
    
    
    
    
    @IBAction func butEqual(_ sender: Any) {
        
        let numberTwo = Double(outputLabel.text!)
        
        var results:Double?
        switch operation {
            
        case "/" :
            results = numberOne! / numberTwo!
        case "*" :
            results = numberOne! * numberTwo!
        case "-" :
            results = numberOne! - numberTwo!
        case "+" :
            results = numberOne! + numberTwo!
        
        default:
            results = 0.0
        }
        
        outputLabel.text = String(results!)
        newClick = true
    }
    
    
    
    
    
}

