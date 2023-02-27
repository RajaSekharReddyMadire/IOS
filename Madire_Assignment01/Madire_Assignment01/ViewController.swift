//
//  ViewController.swift
//  Madire_Assignment01
//
//  Created by Madire,Rajasekhara Reddy on 2/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameOutlet: UITextField!
    @IBOutlet weak var lastNameOutlet: UITextField!
    @IBOutlet weak var yearOutlet: UITextField!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var initialsLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SubmitBTN(_ sender: Any) {
        //Read the firstName and assign it to the empty variable
        var fName = firstNameOutlet.text!
        //Read the last name and assign it to the empty variable
        var lName = lastNameOutlet.text!
        //Read the birth year and assign it to the empty variable
        var birthYear = yearOutlet.text!
        var dob = Int(birthYear) ?? 0
        let date = Date()
        let calender = Calendar.current
        let year = calender.component(.year, from: date)
        var finalAge=Int(year) - dob
        displayLabel.text="Details"
        fullNameLabel.text="FirstName : \(lName) \(fName)"
        initialsLabel.text="LastName : \(fName.first!)\(lName.first!)"
        ageLabel.text=" Age: \(finalAge)"
        
        
        
        
    }
    @IBAction func ResetBTN(_ sender: Any) {
        //Reset the data with the empty feilds.
        firstNameOutlet.text=" "
        lastNameOutlet.text=" "
        yearOutlet.text=" "
        displayLabel.text=" "
        fullNameLabel.text=" "
        initialsLabel.text=" "
        ageLabel.text=" "
        
        
    }
}

