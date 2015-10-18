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
    
    func addDigit(digit: String) {
        
    }

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
