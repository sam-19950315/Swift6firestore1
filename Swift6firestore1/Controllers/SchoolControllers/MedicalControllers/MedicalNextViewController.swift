//
//  MedicalNextViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/31.
//

import UIKit
import Firebase
import FirebaseFirestore

class MedicalNextViewController: UIViewController {

    @IBOutlet weak var medicalQuizTopLabel: UILabel!
    @IBOutlet weak var medicalQuizLabel: UILabel!
    @IBOutlet weak var medicalAsButton: UIButton!
    @IBOutlet weak var medicalBsButton: UIButton!
    @IBOutlet weak var medicalAsAnswerLabel: UILabel!
    @IBOutlet weak var medicalBsAnswerLabel: UILabel!
       
           var medicalQuizString = String()
           var medicalA = String()
           var medicalB = String()
           var medicalAnswer = String()
           var medicalExplanation1 = String()
           var medicalchallengerAnswer = String()
           var medicalInterest1 = String()
           var medicalNextViewScaleFitModel = NextViewScaleFitModel()

       override func viewDidLoad() {
           super.viewDidLoad()
        medicalNextViewScaleFitModel.nextViewScaleFitModel(sender: self, quizTopLabel: medicalQuizTopLabel, quizLabel: medicalQuizLabel, asAnswerLabel: medicalAsAnswerLabel, asAnswerButton: medicalAsButton, bsAnswerLabel: medicalBsAnswerLabel, bsAnswerButton: medicalBsButton, quizString: medicalQuizString, a: medicalA, b: medicalB)
       }
    
    
    @IBAction func answer(_ sender: Any) {
        if (sender as AnyObject).tag == 1{
         medicalchallengerAnswer = "A"
            medicalScreenTransition()
            
        }else if (sender as AnyObject).tag == 2{
            medicalchallengerAnswer = "B"
            medicalScreenTransition()
        }
    }
    
    
       

       
       func medicalScreenTransition(){
           let mTAVC = storyboard?.instantiateViewController(identifier: "medicalTheAnswer") as! MedicalTheAnswerViewController
                       mTAVC.medicalYourAnswer = medicalchallengerAnswer
           mTAVC.medicalQuizString2 = medicalQuizString
           mTAVC.medicalExplanation2 = medicalExplanation1
           mTAVC.medicalCollectAnswer = medicalAnswer
           mTAVC.medicalInterest2 = medicalInterest1
           
                       navigationController?.pushViewController(mTAVC, animated: true)
       }


}
