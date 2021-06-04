//
//  ApparellNextViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/06/02.
//

import UIKit
import Firebase
import FirebaseFirestore

class ApparellNextViewController: UIViewController {


    @IBOutlet weak var quizTopLabel: UILabel!
    @IBOutlet weak var quizLabel: UILabel!
    @IBOutlet weak var asButton: UIButton!
    @IBOutlet weak var bsButton: UIButton!
    @IBOutlet weak var asAnswerLabel: UILabel!
    @IBOutlet weak var bsAnswerLabel: UILabel!
       
           var quizString = String()
           var a = String()
           var b = String()
           var answer = String()
           var explanation1 = String()
           var challengerAnswer = String()
           var interest1 = String()
           var nextViewScaleFitModel = NextViewScaleFitModel()

       override func viewDidLoad() {
           super.viewDidLoad()
            
            nextViewScaleFitModel.nextViewScaleFitModel(sender: self, quizTopLabel: quizTopLabel, quizLabel: quizLabel, asAnswerLabel: asAnswerLabel, asAnswerButton: asButton, bsAnswerLabel: bsAnswerLabel, bsAnswerButton: bsButton, quizString: quizString, a: a, b: b)
       }
 
    
    @IBAction func answer(_ sender: Any) {
        if (sender as AnyObject).tag == 1{
         challengerAnswer = "A"
            screenTransition()
            
        }else if (sender as AnyObject).tag == 2{
            challengerAnswer = "B"
            screenTransition()
        }
    }
    
    
       

       
       func screenTransition(){
           let tAVC = storyboard?.instantiateViewController(identifier: "apparellTheAnswer") as! ApparellTheAnswerViewController
                       tAVC.yourAnswer = challengerAnswer
                tAVC.quizString2 = quizString
                tAVC.explanation2 = explanation1
                tAVC.collectAnswer = answer
                tAVC.interest2 = interest1
           
                       navigationController?.pushViewController(tAVC, animated: true)
       }


}



