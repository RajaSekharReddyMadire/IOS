//
//  CourseViewController.swift
//  StudentApp
//
//  Created by Madire,Rajasekhara Reddy on 4/4/23.
//

import UIKit

class CourseViewController: UIViewController {

    @IBOutlet weak var courseOutletLabel: UILabel!
    var coursesArray:[Course] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for course in coursesArray {
            courseOutletLabel.text = courseOutletLabel.text! + course.title + "-" + course.sem + "\n"
                }
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
