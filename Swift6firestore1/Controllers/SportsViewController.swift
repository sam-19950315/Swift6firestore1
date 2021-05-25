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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

          let MaxWidth = self.view.bounds.width
          let MaxHeight = self.view.bounds.height
          let width = MaxWidth / 6 * 5
          let height = MaxHeight / 20
          let x = (MaxWidth - width)/2
          let y = MaxHeight/10
          
        sportsTopLabel.frame = CGRect(x: x, y: y, width: width, height: height * 2)
        refereeButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        refereeButton.center = CGPoint(x: MaxWidth/2, y: y * 3)
        
        toolButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        toolButton.center = CGPoint(x: MaxWidth/2, y: y * 5.5)
        
        athleteButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        athleteButton.center = CGPoint(x: MaxWidth/2, y: y * 8)
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
