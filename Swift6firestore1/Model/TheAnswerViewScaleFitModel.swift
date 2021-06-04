//
//  TheAnswerViewScaleFitModel.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/30.
//

import Foundation
import UIKit

class TheAnswerViewScaleFitModel{
    func theAnswerViewScaleFitFunc(sender:UIViewController,quizLabel2:UILabel,quizString2:String,resultLabel:UILabel,collectLabel:UILabel,collectAnswer:String,explanationLabel:UILabel,explanation2:String,starTopLabel:UILabel,starButton:UIButton){
        
        let MaxWidth = sender.view.bounds.width
        let MaxHeight = sender.view.bounds.height
        let width = MaxWidth / 6 * 5
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10

        quizLabel2.frame = CGRect(x: x, y: y, width: width, height: height*4)
        quizLabel2.text = quizString2
        resultLabel.frame = CGRect(x: x, y: y*3, width: width, height: height)
        collectLabel.text = "正解は・・・\(collectAnswer)"
        collectLabel.frame = CGRect(x: x, y: y*3.5, width: width, height: height*2)
        explanationLabel.text = explanation2
        explanationLabel.frame = CGRect(x: x, y: y*4.5, width: width, height: height*5)
        explanationLabel.adjustsFontSizeToFitWidth = true
        explanationLabel.minimumScaleFactor = 0.3
        starTopLabel.frame = CGRect(x: x, y: y*6.5, width: width, height: height*3)
        starButton.frame = CGRect(x: MaxWidth/4, y: y*8, width: MaxWidth/2, height: height*4)
    }
    
}
