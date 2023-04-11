//
//  ResultViewController.swift
//  DiscountDemoApp
//
//  Created by Madire,Rajasekhara Reddy on 4/4/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var EnteredAmountOutlet: UILabel!
    
    @IBOutlet weak var EnteredDiscountRateOutlet: UILabel!
    
    @IBOutlet weak var PriceAfterDiscOutlet: UILabel!
    
    var amount = ""
    var discRate = ""
    var priceAfterDisc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EnteredAmountOutlet.text = EnteredAmountOutlet.text! + amount
        EnteredDiscountRateOutlet.text = EnteredDiscountRateOutlet.text! + discRate
        PriceAfterDiscOutlet.text = PriceAfterDiscOutlet.text! + priceAfterDisc
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
