//
//  IntroViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/06/16.
//

import UIKit
import Lottie

class IntroViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var onboardArray = [UIImageView(image:UIImage(named: "TopPage")),UIImageView(image:UIImage(named: "NextPage")),UIImageView(image:UIImage(named: "Quiz Page")),UIImageView(image:UIImage(named: "AnswerPage")),UIImageView(image:UIImage(named: "TheAnswerPage")),UIImageView(image:UIImage(named: "ParentsPage"))]
        
    
    var onboardStringArray = ["さぁ、夢を探しに出かけよう\nみんなは、気になる絵をタップ使用！\n保護者さまは、保護者の方はこちらをタップしてください。","また、気になる絵をタップしよう！","いくつかクイズがあるので、気になるクイズをタップしよう！","正解だと思うボタンをタッチだ！","答えは合っていたかな？クイズが面白いと思ったら、星をタップだ！\n何回でも押せるぞ！押した回数で、君の興味がわかる！","お家の人が見るページだよ！君の興味から、おすすめの本をお家の人に提案するよ！"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let MaxWidth = self.view.bounds.width
        let MaxHeight = self.view.bounds.height
        let width = MaxWidth / 6 * 5
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10
        
        skipButton.frame = CGRect(x: (MaxWidth*2)/3, y: height*2, width: MaxWidth/4, height: height*2)
        
        onboardArray =
        scrollView.isPagingEnabled = true
        setUpScroll()
        for i in 0...5{
            let animation = onboardArray[i]
            animation. = CGRect(x: CGFloat(i) * view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height)
            scrollView.addSubview(animation)
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        super.navigationController?.isNavigationBarHidden = true
    }
    
    func setUpScroll(){
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: view.frame.size.width * 7, height: scrollView.frame.size.height)
        
        for i in 0...5{
            
            let onboardLabel = UILabel(frame: CGRect(x: CGFloat(i) * view.frame.size.width, y: view.frame.size.height/3, width: scrollView.frame.size.width, height: scrollView.frame.size.height))
            
            onboardLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
            onboardLabel.textAlignment = .center
            onboardLabel.text = onboardStringArray[i]
            scrollView.addSubview(onboardLabel)
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

}
