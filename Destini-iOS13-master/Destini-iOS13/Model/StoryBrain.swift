//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    var currentStory = 0
    
    mutating func nextStory(userAnswer: String){
        if userAnswer == stories[currentStory].choice1 {
            currentStory = stories[currentStory].choice1Destination
            print(currentStory)
        }else if userAnswer == stories[currentStory].choice2 {
            currentStory = stories[currentStory].choice2Destination
            print(currentStory)
        }
}
}



