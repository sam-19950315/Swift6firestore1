//
//  TopViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/23.
//

import UIKit

class TopViewController: UIViewController {

    
   
    @IBOutlet weak var school: UIButton!
    @IBOutlet weak var house: UIButton!
    @IBOutlet weak var depart: UIButton!
    @IBOutlet weak var sports: UIButton!
    @IBOutlet weak var parentsButton: UIButton!
    
    
    @IBOutlet weak var tapLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let MaxWidth = self.view.bounds.width
        let MaxHeight = self.view.bounds.height
        let width = MaxWidth / 6 * 5
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10
        
        tapLabel.frame = CGRect(x: x, y: y, width: width, height: height * 2)
        school.frame.size = CGSize(width: MaxWidth/3, height: height * 3)
        school.center = CGPoint(x: MaxWidth/3, y: y * 3)
        house.frame.size = CGSize(width: MaxWidth/3, height: height * 3)
        house.center = CGPoint(x: MaxWidth/3 * 2, y: y * 5)
        depart.frame.size = CGSize(width: MaxWidth/3, height: height * 3)
        depart.center = CGPoint(x: MaxWidth/3, y: y * 7)
        sports.frame.size = CGSize(width: MaxWidth/3, height: height * 3)
        sports.center = CGPoint(x: MaxWidth/3 * 2, y: y * 9)
        parentsButton.frame = CGRect(x: x, y: y*9, width: MaxWidth/3, height: height)


        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func schoolDetails(_ sender: Any) {
        performSegue(withIdentifier: "schoolSegue", sender: nil)
    }
    
    @IBAction func houseDetails(_ sender: Any) {
        performSegue(withIdentifier: "houseSegue", sender: nil)
    }
    
    @IBAction func departDetails(_ sender: Any) {
        performSegue(withIdentifier: "departSegue", sender: nil)
    }
    
    @IBAction func sportsDetails(_ sender: Any) {
        performSegue(withIdentifier: "sportsSegue", sender: nil)
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
