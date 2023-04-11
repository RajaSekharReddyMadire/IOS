//
//  ViewController.swift
//  BMI
//
//  Created by Kolli,Sai Kumar on 4/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weightOutlet: UITextField!
    
    @IBOutlet weak var heightOutlet: UITextField!
    
    var BMIIndex = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkBMI(_ sender: Any) {
        var weight = Double(weightOutlet.text!)
        var height = Double(heightOutlet.text!)
         BMIIndex = weight!/height!*12.5
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if (transition=="resultSegue") {
            var destination = segue.destination as! ResultViewController
            destination.BMIIndex = BMIIndex
            if(BMIIndex>30.0) {
                destination.ImageName = "danger"
            }
            else if(BMIIndex<=29.9&&BMIIndex>=20) {
                destination.ImageName = "warning"
                
            }
            else if(BMIIndex<=19.5 && BMIIndex>=10.0) {
                destination.ImageName="perfect"
            }
            else {
                destination.ImageName = "low"
            }
        }
    }
    
}

