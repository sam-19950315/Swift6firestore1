//
//  TeacherTheAnswerViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/30.
//

import UIKit
import Firebase
import FirebaseFirestore

class TeacherTheAnswerViewController: UIViewController {

    @IBOutlet weak var teacherQuizLabel2: UILabel!
    @IBOutlet weak var teacherResultLabel: UILabel!
    @IBOutlet weak var teacherCollectLabel: UILabel!
    @IBOutlet weak var teacherExplanationLabel: UILabel!
    @IBOutlet weak var teacherStarTopLabel: UILabel!
    @IBOutlet weak var teacherStarButton: UIButton!
    
    
    let db = Firestore.firestore()
    var teacherYourAnswer = String()
    var teacherCollectAnswer = String()
    var teacherExplanation2 = String()
    var teacherQuizString2 = String()
    var sendModel = SendModel()
    var teacherInterest2 = String()
    var count = Int()
    var teacherTheAnswerViewScaleFit = TheAnswerViewScaleFitModel()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        teacherTheAnswerViewScaleFit.theAnswerViewScaleFitFunc(sender: self, quizLabel2: teacherQuizLabel2, quizString2: teacherQuizString2, resultLabel: teacherResultLabel, collectLabel: teacherCollectLabel, collectAnswer: teacherCollectAnswer, explanationLabel: teacherExplanationLabel, explanation2: teacherExplanation2, starTopLabel: teacherStarTopLabel, starButton: teacherStarButton)
        
        check()
        loadData()
        

        // Do any additional setup after loading the view.
    }
    

    
    func check(){
        if teacherYourAnswer == teacherCollectAnswer{
            teacherResultLabel.text = "ピンポーン♫すごいね！！！"
            
        }else {
            teacherResultLabel.text = "ザンネン(^◇^;)"
        }
    }
    
    func judge(){
        count = count + 1
    }
    
    
    @IBAction func teacherStarButtonAction(_ sender: Any) {
        judge()
        sendModel.sendCount(collectionName: teacherInterest2, count: count)
    }
    
    func loadData(){
        db.collection("Users").document(Auth.auth().currentUser!.uid).collection("興味分野集計").document(teacherInterest2).getDocument { [self] (snapShot, error) in
            if let error = error {
                fatalError("\(error)")
            }
            guard let countdata = snapShot?.data() else { return }
            self.count = countdata["count"] as! Int
            }
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
