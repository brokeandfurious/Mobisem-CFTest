//
//  ViewController.swift
//  Mobisem-CustomerFeedback
//
//  Created by mkolcalar on 25.04.2018.
//  Copyright © 2018 mkolcalar. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var animationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrangeAnimation()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func arrangeAnimation() {
        print("Animation playing.")
        
        let animationView2 = LOTAnimationView.init(name: "smileyswitch-lighter")
        animationView.addSubview(animationView2)
        animationView2.translatesAutoresizingMaskIntoConstraints = false
        animationView2.contentMode = .scaleAspectFill
        animationView2.loopAnimation = true
        animationView2.clipsToBounds = true
        animationView2.play()
        
        animationView.frame = CGRect(x: 0, y: 0, width: animationView.frame.width, height: animationView.frame.height)
        
        animationView2.centerYAnchor.constraint(equalTo: animationView.centerYAnchor).isActive = true
        animationView2.centerXAnchor.constraint(equalTo: animationView.centerXAnchor).isActive = true
        animationView2.widthAnchor.constraint(equalTo: animationView.widthAnchor, multiplier: 0.7).isActive = true
        animationView2.heightAnchor.constraint(equalTo: animationView.heightAnchor, multiplier: 0.7).isActive = true
//        animationView2.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }


}

