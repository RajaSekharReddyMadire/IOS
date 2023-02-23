//
//  ViewController.swift
//  DiscountApp
//
//  Created by Madire,Rajasekhara Reddy on 2/14/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var AmountOutlet: UITextField!
    
    @IBOutlet weak var DiscountOutlet: UITextField!
    @IBOutlet weak var DisplayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calDiscountBtn(_ sender: Any) {
        
        //Read the entered amount
        var enteredAmount = Double(AmountOutlet.text!)
        //Read the entered discount rate
        var enteredDiscount = Double(DiscountOutlet.text!)
        //Calculate the price after the discount and assign it to the dislay label
        var price = enteredAmount! - (enteredAmount! * enteredDiscount!/100)
        DisplayLabel.text="Price after discount: $\(price)"
        
        
    }
}

