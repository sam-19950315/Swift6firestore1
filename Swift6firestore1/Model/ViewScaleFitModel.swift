//
//  ViewScaleFitModel.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/29.
//

import Foundation
import UIKit

class ViewScaleFitModel{
    func viewScaleFit(sender:UIViewController,topLabel:UILabel,button1:UIButton,button2:UIButton,button3:UIButton){
    
    let MaxWidth = sender.view.bounds.width
    let MaxHeight = sender.view.bounds.height
    let width = MaxWidth / 6 * 5
    let height = MaxHeight / 20
    let x = (MaxWidth - width)/2
    let y = MaxHeight/10
    
    topLabel.frame = CGRect(x: x, y: y, width: width, height: height * 2)
    button1.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
    button1.center = CGPoint(x: MaxWidth/2, y: y * 3)
    
    button2.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
    button2.center = CGPoint(x: MaxWidth/2, y: y * 5.5)
    
    button3.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
    button3.center = CGPoint(x: MaxWidth/2, y: y * 8)
    
    

    
  }
}

