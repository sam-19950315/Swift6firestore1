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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let MaxWidth = self.view.bounds.width
        let MaxHeight = self.view.bounds.height
        let width = MaxWidth / 6 * 5
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10
        
        schoolTopLabel.frame = CGRect(x: x, y: y, width: width, height: height * 2)
        sheffButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        sheffButton.center = CGPoint(x: MaxWidth/2, y: y * 3)
        
        teacherButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        teacherButton.center = CGPoint(x: MaxWidth/2, y: y * 5.5)
        
        medicalButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        medicalButton.center = CGPoint(x: MaxWidth/2, y: y * 8)


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
