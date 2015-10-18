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
    }
    
    @IBAction func plus() {
    }
    
    @IBAction func minus() {
    }
    
    @IBAction func multiply() {
    }
    
    @IBAction func divide() {
    }
    
    @IBAction func percTapped() {
    }
    
    @IBAction func equals() {
    }
    
    @IBAction func memorySave() {
    }
    
    @IBAction func memoryRecall() {
    }
    
    
    
    
}
