//
//  RakutenViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/06/09.
//

import UIKit
import WebKit

class RakutenViewController: UIViewController {
    var webView = WKWebView()
    var url = String()
    
    @IBOutlet weak var toolBar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(url)
        webView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height - toolBar.frame.size.height)
        
        view.addSubview(webView)
        let url = URL(string: url as! String)
        let request = URLRequest(url: url!)

        webView.load(request)
        
        // Do any additional setup after loading the view.
    }


    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    @IBAction func go(_ sender: Any) {
        webView.goForward()
    }
    
}
