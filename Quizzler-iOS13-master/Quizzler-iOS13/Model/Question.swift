//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Elena Cai on 6/28/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: Array<Any>
    let correctAnswer: String
    
    init(q:String, a:Array<Any>, correctAnswer:String) {
        text=q
        answer=a
        self.correctAnswer = correctAnswer
    }
}
