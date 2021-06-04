//
//  NextViewScaleFitModel.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/30.
//

import Foundation
import UIKit

class NextViewScaleFitModel {
    
    func nextViewScaleFitModel(sender:UIViewController,quizTopLabel:UILabel,quizLabel:UILabel,asAnswerLabel:UILabel,asAnswerButton:UIButton,bsAnswerLabel:UILabel,bsAnswerButton:UIButton,quizString:String,a:String,b:String){
        
        let MaxWidth = sender.view.bounds.width
        let MaxHeight = sender.view.bounds.height
        let width = MaxWidth / 6 * 5
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10

        quizTopLabel.frame = CGRect(x: x, y: y, width: width, height: height*2)
        quizLabel.text = quizString
        quizLabel.frame = CGRect(x: x, y: y*3, width: width, height: height*4)
        asAnswerLabel.text = a
        asAnswerButton.frame = CGRect(x: MaxWidth/6, y: y*6, width: MaxWidth/6, height: height*2)
        asAnswerLabel.frame = CGRect(x: MaxWidth/3, y: y*6, width: width*4/5, height: height*2)
        asAnswerLabel.font = asAnswerLabel.font.withSize(15)
        bsAnswerLabel.frame = CGRect(x: MaxWidth/3, y: y*8, width: width*4/5, height: height*2)
        bsAnswerLabel.text = b
        bsAnswerLabel.font = asAnswerLabel.font.withSize(15)
        bsAnswerButton.frame = CGRect(x: MaxWidth/6, y: y*8, width: MaxWidth/6, height: height*2)

    }
    
}


