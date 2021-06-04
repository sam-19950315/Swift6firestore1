//
//  TeacherNextViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/30.
//

import UIKit
import Firebase
import FirebaseFirestore


class TeacherNextViewController: UIViewController {
    
    
    @IBOutlet weak var teacherQuizTopLabel: UILabel!
    @IBOutlet weak var teacherQuizLabel: UILabel!
    @IBOutlet weak var teacherAsButton: UIButton!
    @IBOutlet weak var teacherBsButton: UIButton!
    @IBOutlet weak var teacherAsAnswerLabel: UILabel!
    @IBOutlet weak var teacherBsAnswerLabel: UILabel!
    
        var teacherQuizString = String()
        var teacherA = String()
        var teacherB = String()
        var teacherAnswer = String()
        var teacherExplanation1 = String()
        var teacherchallengerAnswer = String()
        var teacherInterest1 = String()
        var teacherNextViewScaleFitModel = NextViewScaleFitModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        teacherNextViewScaleFitModel.nextViewScaleFitModel(sender: self, quizTopLabel: teacherQuizTopLabel, quizLabel: teacherQuizLabel, asAnswerLabel: teacherAsAnswerLabel, asAnswerButton: teacherAsButton, bsAnswerLabel: teacherBsAnswerLabel, bsAnswerButton: teacherBsButton, quizString: teacherQuizString, a: teacherA, b: teacherB)
    }
    
    @IBAction func teacherAnswer(_ sender: Any) {
        if (sender as AnyObject).tag == 1{
            teacherchallengerAnswer = "A"
            teacherScreenTransition()
            
        }else if (sender as AnyObject).tag == 2{
            teacherchallengerAnswer = "B"
            teacherScreenTransition()
        }
    }
    

    
    func teacherScreenTransition(){
        let tTAVC = storyboard?.instantiateViewController(identifier: "teacherTheAnswer") as! TeacherTheAnswerViewController
                    tTAVC.teacherYourAnswer = teacherchallengerAnswer
        tTAVC.teacherQuizString2 = teacherQuizString
        tTAVC.teacherExplanation2 = teacherExplanation1
        tTAVC.teacherCollectAnswer = teacherAnswer
        tTAVC.teacherInterest2 = teacherInterest1
        
                    navigationController?.pushViewController(tTAVC, animated: true)
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
