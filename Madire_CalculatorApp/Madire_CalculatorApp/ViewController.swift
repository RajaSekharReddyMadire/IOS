//
//  ViewController.swift
//  Madire_CalculatorApp
//
//  Created by Madire,Rajasekhara Reddy on 2/14/23.
//

import UIKit

class ViewController: UIViewController {
    var val1:Double = -9.99
    var val2:Double = -9.99
    var calcOperator: String = " "
    @IBOutlet weak var resLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func acBtn(_ sender: UIButton) {
        resLabel.text = ""
                val1 = -9.99
                val2 = -9.99
    }
    
    @IBAction func CBtn(_ sender: Any) {
        var temp = resLabel.text!
                if(!temp.isEmpty){
                    temp.removeLast()}
                if(temp.isEmpty){
                    val1 = -9.99
                    val2 = -9.99
                }
                resLabel.text = temp
    }
    
    @IBAction func PlusOrMinusBtn(_ sender: UIButton) {
        if calcOperator == "-"{
                    calcOperator = "+"
                }
                else if calcOperator == "+"{
                    calcOperator = "-"
                }
    }
    
    @IBAction func MultiplicationBtn(_ sender: UIButton) {
        val1 = Double(resLabel.text!) ?? 0.0
                resLabel.text = "X"
                calcOperator = "X"
                resLabel.text = ""
    }
    
    @IBAction func PlusBtn(_ sender: UIButton) {
        val1 = Double(resLabel.text!) ?? 0.0
                resLabel.text = "+"
                calcOperator = "+"
                resLabel.text = ""
    }
 
    
    @IBAction func SubBtn(_ sender: UIButton) {
      val1 = Double(resLabel.text!) ?? 0.0
               resLabel.text = "-"
               calcOperator = "-"
               resLabel.text = ""
    }
    
    
    @IBAction func EqualsBtn(_ sender: UIButton) {
      val2 = Double(resLabel.text!) ?? 0.0
                if calcOperator.contains("+"){
                    var output = val1+val2
                    if(output.truncatingRemainder(dividingBy: 1)==0){
                        resLabel.text = "\(Int(output))"
                    }
                    else {resLabel.text = "\(output)"}
                }
                else if calcOperator.contains("-"){
                    var output = val1-val2
                    if(output.truncatingRemainder(dividingBy: 1)==0){
                        resLabel.text = "\(Int(output))"
                    }
                    else{resLabel.text = "\(output)"}
                }
                if calcOperator.contains("X"){
                    var output = val1*val2
                    if(output.truncatingRemainder(dividingBy: 1)==0){
                        resLabel.text = "\(Int(output))"
                    }
                    else {resLabel.text = "\(output)"}
                }
                if calcOperator.contains("÷"){
                    var output = val1/val2
                    if(val2 == 0){
                        resLabel.text = "Not a Number"
                    }
                    else if(output.truncatingRemainder(dividingBy: 1)==0){
                        resLabel.text = "\(Int(output))"
                    }
                    else {resLabel.text = "\(round(output * 100000) / 100000.0)"}
                }
                if calcOperator.contains("%"){
                    var output = val1.truncatingRemainder(dividingBy : val2)
                    if(output.truncatingRemainder(dividingBy: 1)==0){
                        resLabel.text = "\(Int(output))"
                    }
                    else {resLabel.text = "\(round(output * 100000) / 100000.0)"}
                }
    }

    
    @IBAction func DivideBtn(_ sender: UIButton) {
        val1 = Double(resLabel.text!) ?? 0.0
                resLabel.text = resLabel.text!+"÷"
                calcOperator = "÷"
                resLabel.text = ""
    }
    
    
    @IBAction func PercentileBtn(_ sender: UIButton) {
        val1 = Double(resLabel.text!) ?? 0.0
                resLabel.text = "%"
                calcOperator = "%"
                resLabel.text = ""
    }
    
    
 
    @IBAction func BtnOne(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"1"
    }
    
    
    @IBAction func BtnTwo(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"2"
    }
    
    
    @IBAction func BtnThree(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"3"
    }
    
    
    @IBAction func BtnFour(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"4"
    }
    
    @IBAction func BtnFive(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"5"
    }
    
    
    @IBAction func BtnSix(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"6"
    }
    
    
    @IBAction func BtnSeven(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"7"

        
    }
    
    @IBAction func BtnEight(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"8"

    }
    
    @IBAction func BtnNine(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"9"

    }
    
   
    @IBAction func BtnZero(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"0"

    }
    
   
    @IBAction func BtnDot(_ sender: UIButton) {
        resLabel.text = resLabel.text!+"."

    }
}
