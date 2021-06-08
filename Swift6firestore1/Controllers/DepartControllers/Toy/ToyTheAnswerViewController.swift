//
//  ToyTheAnswerViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/06/02.
//

import UIKit
import Firebase
import FirebaseFirestore

class ToyTheAnswerViewController: UIViewController {


    
    @IBOutlet weak var quizLabel2: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var collectLabel: UILabel!
    @IBOutlet weak var explanationLabel: UILabel!
    @IBOutlet weak var starTopLabel: UILabel!
    @IBOutlet weak var starButton: UIButton!
    
    let db = Firestore.firestore()
    var yourAnswer = String()
    var collectAnswer = String()
    var explanation2 = String()
    var quizString2 = String()
    var sendModel = SendModel()
    var interest2 = String()
    var count = Int()
    var theAnswerViewScaleFit = TheAnswerViewScaleFitModel()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        theAnswerViewScaleFit.theAnswerViewScaleFitFunc(sender: self, quizLabel2: quizLabel2, quizString2: quizString2, resultLabel: resultLabel, collectLabel: collectLabel, collectAnswer: collectAnswer, explanationLabel: explanationLabel, explanation2: explanation2, starTopLabel: starTopLabel, starButton: starButton)
        
        check()
        loadData()
        

        // Do any additional setup after loading the view.
    }
    

    
    func check(){
        if yourAnswer == collectAnswer{
            resultLabel.text = "ピンポーン♫すごいね！！！"
            
        }else {
            resultLabel.text = "ザンネン(^◇^;)"
        }
    }
    
    func judge(){
        count = count + 1
    }
    
    @IBAction func starButtonAction(_ sender: Any) {
        judge()
        sendModel.sendCount(collectionName: interest2,count: count)
    }

    
    func loadData(){
        db.collection("Users").document(Auth.auth().currentUser!.uid).collection("興味分野集計").document(interest2).getDocument { [self] (snapShot, error) in
            if let error = error {
                fatalError("\(error)")
            }
            guard let countdata = snapShot?.data() else { return }
            self.count = countdata["count"] as! Int
            }
    }

}


