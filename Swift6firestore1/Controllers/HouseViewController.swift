//
//  HouseViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/25.
//

import UIKit

class HouseViewController: UIViewController {
    @IBOutlet weak var houseTopLabel: UILabel!
    @IBOutlet weak var gardenButton: UIButton!
    @IBOutlet weak var carpenterButton: UIButton!
    @IBOutlet weak var furnitureButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let MaxWidth = self.view.bounds.width
        let MaxHeight = self.view.bounds.height
        let width = MaxWidth / 6 * 5
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10
        
        houseTopLabel.frame = CGRect(x: x, y: y, width: width, height: height * 2)
        gardenButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        gardenButton.center = CGPoint(x: MaxWidth/2, y: y * 3)
        
        carpenterButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        carpenterButton.center = CGPoint(x: MaxWidth/2, y: y * 5.5)
        
        furnitureButton.frame.size = CGSize(width: MaxWidth/2, height: height * 4)
        furnitureButton.center = CGPoint(x: MaxWidth/2, y: y * 8)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func gardenAction(_ sender: Any) {
        performSegue(withIdentifier: "gardenSegue", sender: nil)
    }
    
    @IBAction func carpenterAction(_ sender: Any) {
        performSegue(withIdentifier: "carpenterSegue", sender: nil)
    }
    
    @IBAction func furnitureAction(_ sender: Any) {
        performSegue(withIdentifier: "furnitureSegue", sender: nil)
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
