//
//  ViewController.swift
//  DiscountDemoApp
//
//  Created by Madire,Rajasekhara Reddy on 4/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AmountOutlet: UITextField!
    
    @IBOutlet weak var DiscountRateOutlet: UITextField!
    
    var priceAfterDiscount = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalDiscountPressed(_ sender: Any) {
        var amount = Double(AmountOutlet.text!)
        
        var discRate = Double(DiscountRateOutlet.text!)
        
        priceAfterDiscount = amount! - (amount!*discRate!/100)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        
        if transition == "resultSegue"{
            var destination  = segue.destination as! ResultViewController
            destination.amount = AmountOutlet.text!
            destination.discRate = DiscountRateOutlet.text!
            destination.priceAfterDisc = String(priceAfterDiscount)
            
            AmountOutlet.text = ""
            DiscountRateOutlet.text = ""
            
        }
    }
    
}

