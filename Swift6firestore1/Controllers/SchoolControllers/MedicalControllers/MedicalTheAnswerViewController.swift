//
//  MedicalTheAnswerViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/31.
//

import UIKit
import Firebase
import FirebaseFirestore

class MedicalTheAnswerViewController: UIViewController {

    @IBOutlet weak var medicalQuizLabel2: UILabel!
    @IBOutlet weak var medicalResultLabel: UILabel!
    @IBOutlet weak var medicalCollectLabel: UILabel!
    @IBOutlet weak var medicalExplanationLabel: UILabel!
    @IBOutlet weak var medicalStarTopLabel: UILabel!
    @IBOutlet weak var medicalStarButton: UIButton!
    
    let db = Firestore.firestore()
    var medicalYourAnswer = String()
    var medicalCollectAnswer = String()
    var medicalExplanation2 = String()
    var medicalQuizString2 = String()
    var sendModel = SendModel()
    var medicalInterest2 = String()
    var count = Int()
    var medicalTheAnswerViewScaleFit = TheAnswerViewScaleFitModel()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        medicalTheAnswerViewScaleFit.theAnswerViewScaleFitFunc(sender: self, quizLabel2: medicalQuizLabel2, quizString2: medicalQuizString2, resultLabel: medicalResultLabel, collectLabel: medicalCollectLabel, collectAnswer: medicalCollectAnswer, explanationLabel: medicalExplanationLabel, explanation2: medicalExplanation2, starTopLabel: medicalStarTopLabel, starButton: medicalStarButton)
        
        check()
        loadData()
        

        // Do any additional setup after loading the view.
    }
    

    
    func check(){
        if medicalYourAnswer == medicalCollectAnswer{
            medicalResultLabel.text = "ピンポーン♫すごいね！！！"
            
        }else {
            medicalResultLabel.text = "ザンネン(^◇^;)"
        }
    }
    
    func judge(){
        count = count + 1
    }
    
    
    @IBAction func medicalStarButtonAction(_ sender: Any) {
        judge()
        sendModel.sendCount(collectionName: medicalInterest2, count: count)
    }
    
    func loadData(){
        db.collection("Users").document(Auth.auth().currentUser!.uid).collection("興味分野集計").document(medicalInterest2).getDocument { [self] (snapShot, error) in
            if let error = error {
                fatalError("\(error)")
            }
            guard let countdata = snapShot?.data() else { return }
            self.count = countdata["count"] as! Int
            }
    }

}
