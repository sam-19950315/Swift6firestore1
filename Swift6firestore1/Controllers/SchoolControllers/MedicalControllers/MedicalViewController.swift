//
//  medicalViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/31.
//

import UIKit

class medicalViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var medicalNextViewTopLabel: UILabel!
    @IBOutlet weak var medicalTableView: UITableView!
    
    let medicaltextArray = QuizList()
    var medicalTableViewScaleFitModel = TableViewScaleFitModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        medicalTableView.delegate = self
        medicalTableView.dataSource = self
        medicalTableViewScaleFitModel.tableViewScaleFit(sender: self , tableViewVariable: medicalNextViewTopLabel,tableView: medicalTableView)
        medicaltextArray.medicalListFunc()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medicaltextArray.medicalList.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let medicalnextVC = storyboard?.instantiateViewController(identifier: "medicalNextView") as! MedicalNextViewController
        
        medicalnextVC.medicalQuizString = medicaltextArray.medicalList[indexPath.row].quizModelText
        medicalnextVC.medicalA = medicaltextArray.medicalList[indexPath.row].choiceModelA
        medicalnextVC.medicalB = medicaltextArray.medicalList[indexPath.row].choiceModelB
        medicalnextVC.medicalAnswer = medicaltextArray.medicalList[indexPath.row].answerModel
        medicalnextVC.medicalExplanation1 = medicaltextArray.medicalList[indexPath.row].explanationModel
        medicalnextVC.medicalInterest1 = medicaltextArray.medicalList[indexPath.row].interestModel

        
                    navigationController?.pushViewController(medicalnextVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MedicalCell", for: indexPath)
        cell.textLabel!.numberOfLines = 0
        cell.textLabel!.text = medicaltextArray.medicalList[indexPath.row].quizModelText
        
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
