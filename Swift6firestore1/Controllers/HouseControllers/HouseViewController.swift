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
    var houseViewScaleFitModel = ViewScaleFitModel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        houseViewScaleFitModel.viewScaleFit(sender: self, topLabel: houseTopLabel, button1: gardenButton, button2: carpenterButton, button3: furnitureButton)
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
