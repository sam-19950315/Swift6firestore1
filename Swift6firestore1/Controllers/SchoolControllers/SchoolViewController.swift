//
//  SchoolViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/25.
//

import UIKit

class SchoolViewController: UIViewController {

    @IBOutlet weak var schoolTopLabel: UILabel!
    @IBOutlet weak var sheffButton: UIButton!
    @IBOutlet weak var teacherButton: UIButton!
    @IBOutlet weak var medicalButton: UIButton!
    
    var schoolViewSaleFitModel = ViewScaleFitModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        schoolViewSaleFitModel.viewScaleFit(sender: self, topLabel: schoolTopLabel, button1: sheffButton, button2: teacherButton, button3: medicalButton)


        // Do any additional setup after loading the view.
    }
    @IBAction func sheffAction(_ sender: Any) {
        performSegue(withIdentifier: "sheffSegue", sender: nil)
    }
    
    @IBAction func teacherAction(_ sender: Any) {
        performSegue(withIdentifier: "teacherSegue", sender: nil)

    }
    
    @IBAction func medicalAction(_ sender: Any) {
        performSegue(withIdentifier: "medicalSegue", sender: nil)

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
