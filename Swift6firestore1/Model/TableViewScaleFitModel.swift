//
//  ScaleFitModel.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/29.
//

import Foundation
import UIKit

class TableViewScaleFitModel{
    
    func tableViewScaleFit(sender:UIViewController,tableViewVariable:UILabel,tableView:UITableView){
        
        let MaxWidth = sender.view.bounds.width
        let MaxHeight = sender.view.bounds.height
        let width = MaxWidth / 6 * 5
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10
     
        tableViewVariable.frame = CGRect(x: x, y: y, width: width, height: height * 2)
        tableView.frame = CGRect(x: 0, y: y*2, width: MaxWidth, height: 16*height)
    }

    
}
