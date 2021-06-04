//
//  SheffViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/25.
//

import UIKit

class SheffViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var sheffNextViewTopLabel: UILabel!
    @IBOutlet weak var shefTableView: UITableView!
    let shefftextArray = QuizList()
    var sheffTableViewScaleFitModel = TableViewScaleFitModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shefTableView.delegate = self
        shefTableView.dataSource = self
        sheffTableViewScaleFitModel.tableViewScaleFit(sender: self , tableViewVariable: sheffNextViewTopLabel,tableView: shefTableView)
        shefftextArray.sheffListFunc()
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shefftextArray.sheffList.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sheffNextVC = storyboard?.instantiateViewController(identifier: "shefNextView") as! ShefNextViewController
        
        sheffNextVC.sheffQuizString = shefftextArray.sheffList[indexPath.row].quizModelText
        sheffNextVC.sheffA = shefftextArray.sheffList[indexPath.row].choiceModelA
        sheffNextVC.sheffB = shefftextArray.sheffList[indexPath.row].choiceModelB
        sheffNextVC.sheffAnswer = shefftextArray.sheffList[indexPath.row].answerModel
        sheffNextVC.sheffExplanation1 = shefftextArray.sheffList[indexPath.row].explanationModel
        sheffNextVC.sheffInterest1 = shefftextArray.sheffList[indexPath.row].interestModel

        
                    navigationController?.pushViewController(sheffNextVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SheffCell", for: indexPath)
        cell.textLabel!.numberOfLines = 0
        cell.textLabel!.text = shefftextArray.sheffList[indexPath.row].quizModelText
        
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
