//
//  teacherViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/30.
//

import UIKit

class TeacherViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var teacherNextViewTopLabel: UILabel!
    @IBOutlet weak var teacherTableView: UITableView!
    let teachertextArray = QuizList()
    var teacherTableViewScaleFitModel = TableViewScaleFitModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teacherTableView.delegate = self
        teacherTableView.dataSource = self
        teacherTableViewScaleFitModel.tableViewScaleFit(sender: self , tableViewVariable: teacherNextViewTopLabel,tableView: teacherTableView)
        teachertextArray.teacherListFunc()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teachertextArray.teacherList.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = storyboard?.instantiateViewController(identifier: "teacherNextView") as! TeacherNextViewController
        
        nextVC.teacherQuizString = teachertextArray.teacherList[indexPath.row].quizModelText
        nextVC.teacherA = teachertextArray.teacherList[indexPath.row].choiceModelA
        nextVC.teacherB = teachertextArray.teacherList[indexPath.row].choiceModelB
        nextVC.teacherAnswer = teachertextArray.teacherList[indexPath.row].answerModel
        nextVC.teacherExplanation1 = teachertextArray.teacherList[indexPath.row].explanationModel
        nextVC.teacherInterest1 = teachertextArray.teacherList[indexPath.row].interestModel

        
                    navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeacherCell", for: indexPath)
        cell.textLabel!.numberOfLines = 0
        cell.textLabel!.text = teachertextArray.teacherList[indexPath.row].quizModelText
        
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
