//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Madire,Rajasekhara Reddy on 3/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //min x and min y
        
        let minX = imageViewOL.frame.minX;
        let minY = imageViewOL.frame.minY;
        print(minX,minY)
        //max x and max y
        
        let maxX = imageViewOL.frame.maxX;
        let maxY = imageViewOL.frame.maxY;
        
        print(maxX,maxY)
        
        let midX = imageViewOL.frame.midX;
        let midY = imageViewOL.frame.midY;
        
        print(midX,midY)
        
        //move the location of the image view to the upper left corner.
        imageViewOL.frame.origin.x=0;
        imageViewOL.frame.origin.y=0;
        //move the location of the image view to the upper right corner
        imageViewOL.frame.origin.x=314
        imageViewOL.frame.origin.y=0;
        //move the location of the image view to the bottom left corner
        imageViewOL.frame.origin.x=0
        imageViewOL.frame.origin.y=796
        //move the location of the image view to the bottom right corner
        imageViewOL.frame.origin.x=314
        imageViewOL.frame.origin.y=796;
        
        //move the image to the midpoint of the screen
        
        imageViewOL.frame.origin.x=314/2
        imageViewOL.frame.origin.y=796/2
        
    }


}

