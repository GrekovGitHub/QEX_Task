//
//  ViewController.swift
//  QEX_Test_Task
//
//  Created by Rostislav on 5/29/21.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    enum ConstantsSigns: String {
        case dot = "."
        case zero = "0"
        case addition = "+"
        case subtraction = "-"
        case multiplication = "✕"
        case division = "÷"
        case emptySign = ""
    }
    
    enum ConstantsNumbers: Int {
        case maxLength = 20
        case oneHundred = 100
    }
    
    @IBOutlet weak var displayLbl: UILabel!
    
    private var isTyping = false
    private var hasDot = false
    private var isBtnsDisabled = false
    private var firstOperand = 0.0
    private var secondOperand = 0.0
    private var rangeOfTags = 1...5
    private var operation: ConstantsSigns = .emptySign
    
    private var input: Double {
        get {
            return Double(displayLbl.text!)!
        }
        set {
            displayLbl.text = "\(newValue)"
        }
    }
    
    @IBAction func numberTapped(_ sender: UIButton) {
        let number = sender.currentTitle!
        if isTyping {
            if displayLbl.text!.count < ConstantsNumbers.maxLength.rawValue {
                displayLbl.text = displayLbl.text! + number
            }
        } else {
            displayLbl.text = number
            isTyping = true
        }
        isBtnsDisabled = false
        changeBtnAccess()
    }
    
    @IBAction func zeroTapped() {
        if displayLbl.text != "0" {
            if let text = displayLbl.text {
                displayLbl.text = "\(text)\(0)"
            }
        }
    }
    
    @IBAction func operationWithTwoOperandsPressed(_ sender: UIButton) {
        firstOperand = input
        operation = ConstantsSigns(rawValue: sender.currentTitle!)!
        isTyping = false
        changeBtnAccess()
        hasDot = false
    }
    
    private func makeOperationWithTwoOperands(operation: (Double, Double) -> Double) {
        input = operation(firstOperand, secondOperand)
        isTyping = false
    }
    
    @IBAction func equalityForTwoOperandsPressed(_ sender: UIButton) {
        if isTyping {
            secondOperand = input
        }
        hasDot = false
        switch operation {
        case .addition:
            makeOperationWithTwoOperands {$0 + $1}
        case .subtraction:
            makeOperationWithTwoOperands {$0 - $1}
        case .multiplication:
            makeOperationWithTwoOperands {$0 * $1}
        case .division:
            makeOperationWithTwoOperands {$0 / $1}
        default:
            break
        }
    }
    
    private func changeBtnAccess() {
        for tagvalue in rangeOfTags {
            let btnTemp = self.view.viewWithTag(tagvalue) as! UIButton;
            btnTemp.isEnabled = !isBtnsDisabled
        }
        isBtnsDisabled = !isBtnsDisabled
    }
    
    @IBAction func clearBtnPressed(_ sender: UIButton) {
        firstOperand = 0.0
        secondOperand = 0.0
        input = 0.0
        displayLbl.text = ConstantsSigns.zero.rawValue
        isTyping = false
        hasDot = false
        operation = .emptySign
    }
    
    @IBAction func dotBtnPressed(_ sender: UIButton) {
        if isTyping && !hasDot {
            displayLbl.text = displayLbl.text!
                + ConstantsSigns.dot.rawValue
            hasDot = true
        }
        else if !isTyping && !hasDot {
            displayLbl.text = ConstantsSigns.zero.rawValue
                + ConstantsSigns.dot.rawValue
        }
    }
}

