//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jordan Walker on 6/10/18.
//  Copyright © 2018 Jordan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        updateBall()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
       
    }
    
    @IBAction func askButtonPressed(_ sender: Any)
    {
        updateBall()
    }
    
    func updateBall()
    {
    
        randomBallNumber = Int(arc4random_uniform(5))
        
    imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBall()
    }
}

