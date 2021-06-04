//
//  SportsViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/25.
//

import UIKit

class SportsViewController: UIViewController {
    @IBOutlet weak var sportsTopLabel: UILabel!
    @IBOutlet weak var refereeButton: UIButton!
    @IBOutlet weak var toolButton: UIButton!
    @IBOutlet weak var athleteButton: UIButton!
    var sportsViewScaleFitModel = ViewScaleFitModel()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sportsViewScaleFitModel.viewScaleFit(sender: self, topLabel: sportsTopLabel, button1: refereeButton, button2: toolButton, button3: athleteButton)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func refereeAction(_ sender: Any) {
        performSegue(withIdentifier: "refereeSegue", sender: nil)
    }
    
    @IBAction func toolAction(_ sender: Any) {
        performSegue(withIdentifier: "toolSegue", sender: nil)
    }
    
    @IBAction func athleteAction(_ sender: Any) {
        performSegue(withIdentifier: "athleteSegue", sender: nil)
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
