//
//  InterfaceController.swift
//  Watch - WatchCalculator WatchKit Extension
//
//  Created by User on 10/17/15.
//  Copyright © 2015 Elijah Buters. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var display: WKInterfaceLabel!
    
    
    var displayValue: Double = 0
    var totalValue = ""
    var currentOperator = ""
    var numberOne: Double = 0
    var numberTwo: Double = 0
    var userIsTypingNumber = false
    var defaults = NSUserDefaults.standardUserDefaults()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func addDigit(digit: String) {
        
        if userIsTypingNumber == false {
            display.setText(digit)
            totalValue = digit
            displayValue = NSNumberFormatter().numberFromString(totalValue)!.doubleValue
            userIsTypingNumber = true
        } else if userIsTypingNumber == true {
            totalValue = totalValue.stringByAppendingString(digit)
            displayValue = NSNumberFormatter().numberFromString(totalValue)!.doubleValue
            display.setText(totalValue)
        }
    }

    
    //Actions
    
    @IBAction func dot() {
        addDigit(".")
    }
    
    @IBAction func zero() {
        addDigit("0")
    }
    
    @IBAction func one() {
        addDigit("1")
    }
    
    @IBAction func two() {
        addDigit("2")
    }
    
    @IBAction func three() {
        addDigit("3")
    }
    
    @IBAction func four() {
        addDigit("4")
    }
    
    @IBAction func five() {
        addDigit("5")
    }

    @IBAction func six() {
        addDigit("6")
    }
    
    @IBAction func seven() {
        addDigit("7")
    }
    
    @IBAction func eight() {
        addDigit("8")
    }
    
    @IBAction func nine() {
        addDigit("9")
    }
    
    @IBAction func clear() {
        
        //Reset everything
        
        numberOne = 0
        numberTwo = 0
        displayValue = 0
        totalValue = ""
        display.setText("0")
        userIsTypingNumber = false
        currentOperator = ""
    }
    
    @IBAction func plus() {
        
        currentOperator = "plus"
        userIsTypingNumber = false
        
        if numberOne == 0 && numberTwo == 0 {
            numberOne = displayValue
        } else if numberOne != 0 && numberTwo == 0 {
            numberTwo = displayValue
            displayValue = numberOne + numberTwo
            display.setText(String(displayValue))
            numberOne = displayValue
            numberTwo = 0
        }

    }
    
    @IBAction func minus() {
        
        currentOperator = "minus"
        userIsTypingNumber = false
        
        if numberOne == 0 && numberTwo == 0 {
            numberOne = displayValue
        } else if numberOne != 0 && numberTwo == 0 {
            numberTwo = displayValue
            displayValue = numberOne - numberTwo
            display.setText(String(displayValue))
            numberOne = displayValue
            numberTwo = 0
        }
    }
    
    @IBAction func multiply() {
        
        currentOperator = "multiply"
        userIsTypingNumber = false
        
        if numberOne == 0 && numberTwo == 0 {
            numberOne = displayValue
        } else if numberOne != 0 && numberTwo == 0 {
            numberTwo = displayValue
            displayValue = numberOne * numberTwo
            display.setText(String(displayValue))
            numberOne = displayValue
            numberTwo = 0
        }
    }
    
    @IBAction func divide() {
        
        currentOperator = "divide"
        userIsTypingNumber = false
        
        if numberOne == 0 && numberTwo == 0 {
            numberOne = displayValue
        } else if numberOne != 0 && numberTwo == 0 {
            numberTwo = displayValue
            displayValue = numberOne / numberTwo
            display.setText(String(displayValue))
            numberOne = displayValue
            numberTwo = 0
        }
    }
    
    @IBAction func percTapped() {
        
        switch currentOperator {
            case "plus":
                numberTwo = displayValue
                displayValue = (numberTwo/100) * numberOne
                display.setText(String(displayValue))
            case "minus":
                numberTwo = displayValue
                displayValue = (numberTwo/100) * numberOne
                display.setText(String(displayValue))
            case "multiply":
                numberTwo = displayValue
                displayValue = (numberTwo/100)
                display.setText(String(displayValue))
            case "divide":
                numberTwo = displayValue
                displayValue = (numberTwo/100)
                display.setText(String(displayValue))
            default:
                break
        }
    }
    
    @IBAction func equals() {
        
        userIsTypingNumber = false
        
        switch currentOperator {
            
            case "plus":
                numberTwo = displayValue
                displayValue = (numberOne + numberTwo)
                display.setText(String(displayValue))
                numberOne = 0
                numberTwo = 0
            case "minus":
                numberTwo = displayValue
                displayValue = (numberOne - numberTwo)
                display.setText(String(displayValue))
                numberOne = 0
                numberTwo = 0
            case "multiply":
                numberTwo = displayValue
                displayValue = (numberOne * numberTwo)
                display.setText(String(displayValue))
                numberOne = 0
                numberTwo = 0
            case "divide":
                numberTwo = displayValue
                displayValue = (numberOne / numberTwo)
                display.setText(String(displayValue))
                numberOne = 0
                numberTwo = 0
            default:
                break
        }
    }
    
    @IBAction func memorySave() {
        
        defaults.setObject(String(displayValue), forKey: "savednumber")

    }
    
    @IBAction func memoryRecall() {
        
        if let savednumber = defaults.stringForKey("savednumber") {
            displayValue = NSNumberFormatter().numberFromString(savednumber)!.doubleValue
            display.setText(savednumber)
        }

    }
    
    
    
    
}
