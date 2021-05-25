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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let MaxWidth = self.view.bounds.width
        let MaxHeight = self.view.bounds.height
        let width = MaxWidth / 6 * 5
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10
        
        departTopLabel.frame = CGRect(x: x, y: y, width: width, height: height * 2)
        bookButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        bookButton.center = CGPoint(x: MaxWidth/2, y: y * 3)
        
        fashionButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        fashionButton.center = CGPoint(x: MaxWidth/2, y: y * 5.5)
        
        toyButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        toyButton.center = CGPoint(x: MaxWidth/2, y: y * 8)

        // Do any additional setup after loading the view.
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
