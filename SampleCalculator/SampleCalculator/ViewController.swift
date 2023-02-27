//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Madire,Rajasekhara Reddy on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    //Declare and initialize to some default values.
    var operand1: Double = -1.1
    var _operator: Character = " "
    var operand2: Double = -1.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1Clicked(_ sender: Any) {
        //asign 5 to the display label.
        displayLabel.text=displayLabel.text! + "1"
        if operand1 == -1.1{
            operand1 = 1
        }
        else{
            operand2 = 1
        }
    }
    @IBAction func button3Clicked(_ sender: Any) {
        displayLabel.text=displayLabel.text! + "3"
        if operand2 == -1.1{
            operand2 = 3
        }
        else{
            operand1 = 3
        }
    }
    @IBAction func button2Clicked(_ sender: Any) {
        displayLabel.text=displayLabel.text! + "2"
        if operand1 == -1.1{
            operand1 = 2
        }
        else{
            operand2 = 2
        }
    }
    @IBAction func button7Clicked(_ sender: Any) {
        displayLabel.text=displayLabel.text! + "7"
        if operand2 == -1.1{
            operand2 = 7
        }
        else{
            operand1 = 7
        }
    }
    @IBAction func buttonAdd(_ sender: Any) {
        displayLabel.text=displayLabel.text! + "+"
        if _operator == " "{
            _operator = "+"
        }
    }
    @IBAction func buttonEqualsClicked(_ sender: Any) {
        displayLabel.text=displayLabel.text! + "="
        if _operator == "+"{
            displayLabel.text=displayLabel.text! + "\(operand1+operand2)"
        }
    }
}

