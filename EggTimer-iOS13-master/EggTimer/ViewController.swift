//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft":5, "Medium":7, "Hard":12]
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
    
    var counter = -1
    var totalTime = -1
    
    @IBAction func hardnessSelection(_ sender: UIButton) {
        
        progressBar.progress = 0
        
        let hardness = sender.currentTitle!
        
        counter = eggTimes[hardness]!
        
        totalTime = eggTimes[hardness]!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }


    @objc func updateCounter() {
        //example functionality
        titleLabel.text = "How do you like your eggs?"
                
        if counter > 0 {
            print("\(counter) seconds.")
            counter -= 1
            progressBar.progress += 1/Float(totalTime)

        } else if counter == 0 {
            titleLabel.text = "DONE!"
            progressBar.progress = 1
        }
    }
    
}

