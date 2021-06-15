//
//  ParentsViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/06/05.
//

import UIKit
import Charts
import FirebaseAuth
import Alamofire
import SwiftyJSON
import SDWebImage

class ParentsViewController: UIViewController,GetDataProtocol {

    @IBOutlet weak var parentsTopLabel: UILabel!
    @IBOutlet weak var pieChartsView: PieChartView!
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookExplanation: UILabel!
    @IBOutlet weak var bookTitle: UIButton!
    @IBOutlet weak var nextBook: UIButton!
    @IBOutlet weak var backBook: UIButton!
    
    var chartArray:[PersonalData] = []
    var loadModel = LoadModel()
    var count = 0
    var keyWord = String()
    var url = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let MaxWidth = self.view.bounds.width
        let MaxHeight = self.view.bounds.height
        let width = MaxWidth / 6 * 5
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10
        
        parentsTopLabel.frame = CGRect(x: x, y: y, width: width, height: height*2)
        pieChartsView.frame = CGRect(x: x, y: y*2, width: width, height: height*8)
        bookImageView.frame = CGRect(x: 0, y: y*7, width: MaxWidth*3/7, height: MaxWidth*3/7)
        bookTitle.frame = CGRect(x: x, y: y*6.3, width: MaxWidth*4/5, height: height)
        bookExplanation.frame = CGRect(x: MaxWidth*2/5, y: bookImageView.frame.minY, width: MaxWidth*1.5/3, height: MaxWidth*3/7)
        nextBook.frame = CGRect(x: MaxWidth*2/3, y: height*19, width: MaxWidth/6, height: height*4/5)
        backBook.frame = CGRect(x: MaxWidth/3, y: height*19, width: MaxWidth/6, height: height*4/5)
        
        
        
        loadModel.getDataProtocol = self
        loadModel.loadMyRecordData(userID: Auth.auth().currentUser!.uid)
    }
        

    
    func getBookImformation(keyword:String,count:Int){
        var url =  "https://app.rakuten.co.jp/services/api/BooksBook/Search/20170404?format=json&title=\(keyWord)&booksGenreId=001004008&carrier=1&applicationId=1037396809879386176"
        
        AF.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON {(response) in
            switch response.result{

            case.success:
                let json:JSON = JSON(response.data as Any)
                let imageString = json["Items"][count]["Item"]["mediumImageUrl"].string
                let titleString = json["Items"][count]["Item"]["title"].string
                let explanation = json["Items"][count]["Item"]["itemCaption"].string
                self.bookImageView.sd_setImage(with: URL(string: imageString!), completed: nil)
                self.bookTitle.setTitle(titleString, for: .normal)
                self.bookTitle.titleLabel?.adjustsFontSizeToFitWidth = true
                self.bookTitle.titleLabel?.minimumScaleFactor = 0.5
                self.bookExplanation.text = explanation
                self.bookExplanation.adjustsFontSizeToFitWidth = true
                self.bookExplanation.minimumScaleFactor = 0.5
                
            case.failure(let error):
                print(error)

            }
        }
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
        
        self.pieChartsView.centerText = "お子様の\n興味分野\nTop5"
        self.pieChartsView.sizeToFit()
        var dataEntries = [PieChartDataEntry]()
        
        if chartArraySort.count < 6{
            for i in 0..<chartArraySort.count{
                let dataEntry = PieChartDataEntry(value: Double(chartArraySort[i].starCount), label: chartArraySort[i].instrument)
                dataEntries.append(dataEntry)
            }
        }else{
        
            for i in 0..<5{
                let dataEntry = PieChartDataEntry(value: Double(chartArraySort[i].starCount), label: chartArraySort[i].instrument)
                dataEntries.append(dataEntry)
            }
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
        
        let keyWordStrintg = chartArraySort[0].instrument
        keyWord = keyWordStrintg.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        print(keyWord)
        getBookImformation(keyword:keyWord, count: count )
        
    }
    
    @IBAction func nextBook(_ sender: Any) {
        count = count + 1
        getBookImformation(keyword:keyWord, count: count )
        print("ネクストぼたん")
        print(count)
    }
    
    @IBAction func back(_ sender: Any) {
        if count == 0 {
            count = 0
            getBookImformation(keyword:keyWord, count: count )
            print("0の時")
            print("バックボタン")
            print(count)
        }else{
        count = count - 1
            getBookImformation(keyword:keyWord, count: count )}
        print("0以外の時")
        print("バックボタン")
        print(count)
    }
    
    
    @IBAction func roadToRakutenBook(_ sender: Any) {
        let rakutenViewController = RakutenViewController()
        let bookItemUrl = url
        UserDefaults.standard.setValue(bookItemUrl, forKey: "url")
        present(rakutenViewController, animated: true, completion: nil)
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


