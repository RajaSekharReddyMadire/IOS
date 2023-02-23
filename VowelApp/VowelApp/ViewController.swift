//
//  ViewController.swift
//  VowelApp
//
//  Created by Madire,Rajasekhara Reddy on 1/31/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        //Read the text and store in the variable
        var enterText=textName.text!;
        //if condition to check fo vowel
        if(enterText.contains("a")||enterText.contains("e")||enterText.contains("i")||enterText.contains("o")||enterText.contains("u"))
            {
                displayLabel.text="The entered text has vowel";
                
            }
            else{
                displayLabel.text="The entered text has no vowel"
            }
            
        
        
        
    }
    
}

