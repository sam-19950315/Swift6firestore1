//
//  ShefNextViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/25.
//

import UIKit
import Firebase
import FirebaseFirestore

class ShefNextViewController: UIViewController {
    
    @IBOutlet weak var sheffQuizTopLabel: UILabel!
    @IBOutlet weak var sheffQuizLabel: UILabel!
    @IBOutlet weak var sheffAsAnswer: UIButton!
    @IBOutlet weak var sheffBsAnswer: UIButton!
    @IBOutlet weak var sheffAsAnswerLabel: UILabel!
    @IBOutlet weak var sheffBsAnswerLabel: UILabel!
    
    
    
    var sheffQuizString = String()
    var sheffA = String()
    var sheffB = String()
    var sheffAnswer = String()
    var sheffExplanation1 = String()
    var challengerAnswer = String()
    var sheffInterest1 = String()
    var sheffNextViewScaleFitModel = NextViewScaleFitModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sheffNextViewScaleFitModel.nextViewScaleFitModel(sender: self, quizTopLabel: sheffQuizTopLabel, quizLabel: sheffQuizLabel, asAnswerLabel: sheffAsAnswerLabel, asAnswerButton: sheffAsAnswer, bsAnswerLabel: sheffBsAnswerLabel, bsAnswerButton: sheffBsAnswer, quizString: sheffQuizString, a: sheffA, b: sheffB)

        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sheffAnswer(_ sender: Any) {
        if (sender as AnyObject).tag == 1{
            challengerAnswer = "A"
            sheffScreenTransition()
            
        }else if (sender as AnyObject).tag == 2{
            challengerAnswer = "B"
            sheffScreenTransition()
        }
        
    }
    

    
    func sheffScreenTransition(){
        let sTAVC = storyboard?.instantiateViewController(identifier: "sheffTheAnswer") as! SheffTheAnswerViewController
                    sTAVC.sheffYourAnswer = challengerAnswer
                    sTAVC.sheffQuizString2 = sheffQuizString
                    sTAVC.sheffExplanation2 = sheffExplanation1
                    sTAVC.sheffCollectAnswer = sheffAnswer
                    sTAVC.sheffInterest2 = sheffInterest1
        
                    navigationController?.pushViewController(sTAVC, animated: true)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
