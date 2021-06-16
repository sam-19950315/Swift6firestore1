//
//  SheffTheAnswerViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/25.
//

import UIKit
import Firebase
import FirebaseFirestore

class SheffTheAnswerViewController: UIViewController {
    
    @IBOutlet weak var sheffQuizLabel2: UILabel!
    @IBOutlet weak var sheffResultLabel: UILabel!
    @IBOutlet weak var sheffCollectLabel: UILabel!
    @IBOutlet weak var sheffExplanationLabel: UILabel!
    @IBOutlet weak var starTopLabel: UILabel!
    @IBOutlet weak var sheffstarButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    let db = Firestore.firestore()
    var sheffYourAnswer = String()
    var sheffCollectAnswer = String()
    var sheffExplanation2 = String()
    var sheffQuizString2 = String()
    var sendModel = SendModel()
    var sheffInterest2 = String()
    var count = Int()
    var sheffTheAnswerViewScaleFit = TheAnswerViewScaleFitModel()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        sheffTheAnswerViewScaleFit.theAnswerViewScaleFitFunc(sender: self, quizLabel2: sheffQuizLabel2, quizString2: sheffQuizString2, resultLabel: sheffResultLabel, collectLabel: sheffCollectLabel, collectAnswer: sheffCollectAnswer, explanationLabel: sheffExplanationLabel, explanation2: sheffExplanation2, starTopLabel: starTopLabel, starButton: sheffstarButton, backButton: backButton)
        
        check()
        loadData()
        

        // Do any additional setup after loading the view.
    }
    

    
    func check(){
        if sheffYourAnswer == sheffCollectAnswer{
            sheffResultLabel.text = "ピンポーン♫すごいね！！！"
            
        }else {
            sheffResultLabel.text = "ザンネン(^◇^;)"
        }
    }
    
    func judge(){
        count = count + 1
    }
    
    @IBAction func sheffstarButtonAction(_ sender: Any) {
        judge()
        sendModel.sendCount(collectionName: sheffInterest2, count: count)
    }
    
    func loadData(){
        db.collection("Users").document(Auth.auth().currentUser!.uid).collection("興味分野集計").document(sheffInterest2).getDocument { [self] (snapShot, error) in
            if let error = error {
                fatalError("\(error)")
            }
            guard let countdata = snapShot?.data() else { return }
            self.count = countdata["count"] as! Int
            }
    }
    
    @IBAction func backAction(_ sender: Any) {
        let index = navigationController!.viewControllers.count - 3
        navigationController?.popToViewController(navigationController!.viewControllers[index], animated: true)
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
