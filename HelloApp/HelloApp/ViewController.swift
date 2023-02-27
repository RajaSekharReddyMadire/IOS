//
//  ViewController.swift
//  HelloApp
//
//  Created by Madire,Rajasekhara Reddy on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var dsipalyOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: UIButton) {
        // Read the input and assign it to a variable
        //Perform string interpoltion
        //"Hello Name!" and assign it to display label
        var input = nameOutlet.text!
        
        dsipalyOutlet.text="Hello,\(input)!"
        
    }
    
}

