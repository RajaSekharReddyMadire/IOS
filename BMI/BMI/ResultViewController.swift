//
//  ResultViewController.swift
//  BMI
//
//  Created by Kolli,Sai Kumar on 4/10/23.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var BMIIndexLabel: UILabel!
    
    
    @IBOutlet weak var resultImage: UIImageView!
    var ImageName = ""
    var BMIIndex = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        BMIIndexLabel.text = " BMI INdex is : \(BMIIndex)"
        resultImage.image = UIImage(named: ImageName)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func shakeMe(_ sender: Any) {
        var width = resultImage.frame.width
               
               width += 40
               
               var height = resultImage.frame.height
               
               height = height + 40
               
               var x  =  resultImage.frame.origin.x-20
               
               
               var y = resultImage.frame.origin.y-20
               
               var largeFrame = CGRect(x: x, y: y, width: width, height: height)
               
               UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                   self.resultImage.frame = largeFrame
               })
    }
    
}
