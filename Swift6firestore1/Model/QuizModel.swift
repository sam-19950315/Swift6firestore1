//
//  SheffQuiz.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/26.
//

import Foundation

class QuizModel{
    
    let quizModelText:String
    let choiceModelA:String
    let choiceModelB:String
    let answerModel:String
    let explanationModel:String
    let interestModel:String
    
    
    init(Text:String,A:String,B:String,Answer:String,Explanation:String,Interest:String){
        
        quizModelText = Text
        choiceModelA = A
        choiceModelB = B
        answerModel = Answer
        explanationModel = Explanation
        interestModel = Interest
        
        
    }
    
}
