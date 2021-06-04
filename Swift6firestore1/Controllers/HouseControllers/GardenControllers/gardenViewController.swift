//
//  gardenViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/06/01.
//

import UIKit

class GardenViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var nextViewTopLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    let textArray = QuizList()
    var tableViewScaleFitModel = TableViewScaleFitModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableViewScaleFitModel.tableViewScaleFit(sender: self , tableViewVariable: nextViewTopLabel,tableView: tableView)
        textArray.gardenListFunc()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.gardenList.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = storyboard?.instantiateViewController(identifier: "gardenNextView") as! GardenNextViewController
        
        nextVC.quizString = textArray.gardenList[indexPath.row].quizModelText
        nextVC.a = textArray.gardenList[indexPath.row].choiceModelA
        nextVC.b = textArray.gardenList[indexPath.row].choiceModelB
        nextVC.answer = textArray.gardenList[indexPath.row].answerModel
        nextVC.explanation1 = textArray.gardenList[indexPath.row].explanationModel
        nextVC.interest1 = textArray.gardenList[indexPath.row].interestModel

        
                    navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GardenCell", for: indexPath)
        cell.textLabel!.numberOfLines = 0
        cell.textLabel!.text = textArray.gardenList[indexPath.row].quizModelText
        
        return cell
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
