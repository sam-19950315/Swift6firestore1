//
//  DepartViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/25.
//

import UIKit

class DepartViewController: UIViewController {
    
    @IBOutlet weak var departTopLabel: UILabel!
    @IBOutlet weak var bookButton: UIButton!
    @IBOutlet weak var fashionButton: UIButton!
    @IBOutlet weak var toyButton: UIButton!
    
    var departViewScaleFitModel = ViewScaleFitModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        departViewScaleFitModel.viewScaleFit(sender: self, topLabel: departTopLabel, button1: bookButton, button2: fashionButton, button3: toyButton)
    }
    
    
    @IBAction func bookAction(_ sender: Any) {
        performSegue(withIdentifier: "bookSegue", sender: nil)
    }
    
    @IBAction func fashionAction(_ sender: Any) {
        performSegue(withIdentifier: "fashionSegue", sender: nil)
    }
    
    @IBAction func toyAction(_ sender: Any) {
        performSegue(withIdentifier: "toySegue", sender: nil)
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
