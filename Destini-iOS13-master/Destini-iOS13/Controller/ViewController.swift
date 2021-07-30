//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        var userAnswer = sender.currentTitle!
        
        storyBrain.nextStory(userAnswer: userAnswer)
        
        updateUI()
        
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @objc func updateUI() {


        
        storyLabel.text = stories[storyBrain.currentStory].title;
        
        choice1Button.setTitle(stories[storyBrain.currentStory].choice1, for: .normal)
        choice2Button.setTitle(stories[storyBrain.currentStory].choice2, for: .normal)
    }


}

