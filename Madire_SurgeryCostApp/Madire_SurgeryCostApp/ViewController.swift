//
//  ViewController.swift
//  Madire_SurgeryCostApp
//
//  Created by Madire,Rajasekhara Reddy on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var patientNameOL: UITextField!
    
    @IBOutlet weak var surgeryTypeOL: UITextField!
    
    @IBOutlet weak var costOL: UITextField!
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var displayLabelOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBTN(_ sender: Any) {
        var enterPatientName = patientNameOL.text!
        var enterSurgeryType = surgeryTypeOL.text!
        var enterCost = Double(costOL.text!)!
        
        if(enterPatientName == ""||enterSurgeryType == ""){
            
            imageOL.image=UIImage(named: "noResults")
            displayLabelOL.text="Enter all details"
            
        }
        
        else if(enterSurgeryType=="Heart"){
            var totalCost = round(enterCost * (1 + 11.75/100) - 500)
            imageOL.image=UIImage(named: "Heart")
            displayLabelOL.text=("\(enterPatientName) ; Total cost for Heart 🫀 surgery is $\(totalCost)")
            
        }
        else if(enterSurgeryType=="Brain"){
            var totalCost = round(enterCost * (1 + 13.5/100) - 750)
            imageOL.image=UIImage(named: "Brain")
            displayLabelOL.text=("\(enterPatientName) ; Total cost for Brain 🧠 surgery is $\(totalCost)")
            

        }
        else{
            var totalCost = round(enterCost * (1 + 6.25/100) - 350)
            imageOL.image=UIImage(named: "Knee")
            displayLabelOL.text=("\(enterPatientName) ; Total cost for Knee replacement surgery is $\(totalCost)")
        }
        
        
        
    }
    
}

