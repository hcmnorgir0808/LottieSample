//
//  ViewController.swift
//  LottieSample
//
//  Created by yaiwamoto on 22/08/2020.
//  Copyright © 2020 Yasutaka Iwamoto. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let animationView = AnimationView(name: "lottie_rocket")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        animationView.center = self.view.center
        animationView.loopMode = .loop
        animationView.animationSpeed = 1
        view.addSubview(animationView)
        animationView.play()
    }

    @IBAction func stopButtonDidTap(_ sender: Any) {
        animationView.stop()
    }
    
    @IBAction func resumeButtonDidTap(_ sender: Any) {
        animationView.play()
    }
}

