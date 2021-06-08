//
//  ParentsViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/06/05.
//

import UIKit
import Charts
import FirebaseAuth

class ParentsViewController: UIViewController,GetDataProtocol {

    @IBOutlet weak var parentsTopLabel: UILabel!
    @IBOutlet weak var pieChartsView: PieChartView!
    var chartArray:[PersonalData] = []
    var loadModel = LoadModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadModel.getDataProtocol = self
        loadModel.loadMyRecordData(userID: Auth.auth().currentUser!.uid)
                }
    
    func getData(dataArray: [PersonalData]) {
        chartArray = dataArray
        print(chartArray)
        chartArray.sort(by: {($0.starCount) > ($1.starCount)})
        var chartArraySort = [PersonalData]()
        for s in chartArray {
            let chartArraySortdata = PersonalData(instrument: s.instrument, starCount: s.starCount)
            chartArraySort.append(chartArraySortdata)
        }
        print(chartArraySort)

        
        self.pieChartsView.centerText = "お子様の興味分野"
        
        var dataEntries = [PieChartDataEntry]()
        
            for i in 0..<chartArraySort.count{
                let dataEntry = PieChartDataEntry(value: Double(chartArraySort[i].starCount), label: chartArraySort[i].instrument)
                dataEntries.append(dataEntry)
            }
        print(dataEntries)
        let dataSet = PieChartDataSet(entries: dataEntries,label: "興味Top5")
            dataSet.colors = ChartColorTemplates.vordiplom()
                    // グラフのデータの値の色
                    dataSet.valueTextColor = UIColor.black
                    // グラフのデータのタイトルの色
                    dataSet.entryLabelColor = UIColor.black

                    self.pieChartsView.data = PieChartData(dataSet: dataSet)
                    
                    // データを％表示にする
                    let formatter = NumberFormatter()
                    formatter.numberStyle = .percent
                    formatter.maximumFractionDigits = 2
                    formatter.multiplier = 1.0
                    self.pieChartsView.data?.setValueFormatter(DefaultValueFormatter(formatter: formatter))
                    self.pieChartsView.usePercentValuesEnabled = true
                    
                    view.addSubview(self.pieChartsView)
    }
        
}
    
    
        


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


