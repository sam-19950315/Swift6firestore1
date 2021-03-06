//
//  SignInViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/22.
//

import UIKit
import Firebase
import FirebaseAuth

class SignInViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var LoginLabel: UILabel!
    @IBOutlet weak var mailaddressLabel: UILabel!
    @IBOutlet weak var mailaddressRegistration: UITextField!
    @IBOutlet weak var passWordLabel: UILabel!
    @IBOutlet weak var passWordRegistration: UITextField!
    @IBOutlet weak var loginLowLabel: UIButton!
    @IBOutlet weak var userRegistrationGuide: UILabel!
    @IBOutlet weak var userRegistrationGuideButton: UIButton!
    @IBOutlet weak var errorMessage: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mailaddressRegistration.delegate = self
        passWordRegistration.delegate = self
        let MaxWidth = self.view.bounds.width
        let MaxHeight = self.view.bounds.height
        let width = MaxWidth / 4 * 3
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10

        LoginLabel.frame = CGRect(x:x , y:y * 1 , width:width , height:height * 2)
        
        mailaddressLabel.frame = CGRect(x: LoginLabel.frame.minX, y: y * 3, width: width * 2 / 3, height: height)
        
        mailaddressRegistration.frame = CGRect(x: LoginLabel.frame.minX, y: y * 4, width: width , height: height)
        
        passWordLabel.frame = CGRect(x: LoginLabel.frame.minX, y: y * 5, width: width * 2 / 3, height: height)
        
        passWordRegistration.frame = CGRect(x: LoginLabel.frame.minX, y: y * 6, width: width * 2 / 3, height: height)
        errorMessage.frame = CGRect(x: LoginLabel.frame.minX, y: y * 6.5, width: width, height: height)
        
        loginLowLabel.frame = CGRect(x:x , y:y * 7 , width:width , height:height)
        
        
        userRegistrationGuide.frame = CGRect(x:LoginLabel.frame.minX , y:y * 8 , width:width , height:height)
        
        userRegistrationGuideButton.frame = CGRect(x:(MaxWidth - width/3)/2 , y:y * 9 , width:width / 3 , height:height)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    @objc func keyboardWillShow(_ notification:NSNotification){
        if mailaddressRegistration.isFirstResponder{
            return
        }
        
        if self.view.frame.origin.y == 0 {
            if let keyboardRect = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                self.view.frame.origin.y -= keyboardRect.height
            }
        }
    }

     @objc func keyboardWillHide(_ notification:NSNotification){
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
           
              
               guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? TimeInterval else{return}


                  UIView.animate(withDuration: duration) {
                      
                      let transform = CGAffineTransform(translationX: 0, y: 0)
                      self.view.transform = transform
                      
                  }
                  
         }
    
    @IBAction func LoginAction(_ sender: Any) {
        let email = mailaddressRegistration.text
        let password = passWordRegistration.text
        
        Auth.auth().signIn(withEmail: email!, password: password!) { [weak self]result,error  in
            guard let self = self else {return}
            if (result?.user) != nil{
                self.performSegue(withIdentifier: "LoginSegue", sender: nil)
                self.errorMessage.textColor = .systemTeal
                print("?????????????????????")
            }else{
                self.errorMessage.text = "????????????????????????????????????????????????????????????????????????"
                self.errorMessage.textColor = .red
            }
        }
    
    }
    
    @IBAction func registrationbutton(_ sender: Any) {
        performSegue(withIdentifier: "userResistrationSegue", sender: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
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
