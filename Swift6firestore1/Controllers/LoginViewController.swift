//
//  LoginViewController.swift
//  Swift6firestore1
//
//  Created by Apple on 2021/05/21.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var userRegistrationTopLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userNameRegistration: UITextField!
    @IBOutlet weak var mailAddressLabel: UILabel!
    @IBOutlet weak var mailAddressRegistration: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordRegistration: UITextField!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var userNameError: UILabel!
    @IBOutlet weak var emailAddressError: UILabel!
    @IBOutlet weak var passWordError: UILabel!
    
    var errorString = String()
    var errorStringSeparate = [String]()
    var errorPrintFunc = ErrorPrintModel()
    let screenSize = UIScreen.main.bounds.size
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameRegistration.delegate = self
        mailAddressRegistration.delegate = self
        passwordRegistration.delegate = self
        let MaxWidth = self.view.bounds.width
        let MaxHeight = self.view.bounds.height
        let width = MaxWidth / 4 * 3
        let height = MaxHeight / 20
        let x = (MaxWidth - width)/2
        let y = MaxHeight/10
        
        userRegistrationTopLabel.frame = CGRect(x:x , y:y * 1 , width:width , height:height * 2)
        userNameLabel.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 3, width: width * 2 / 3, height: height)
        userNameError.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: userNameLabel.frame.maxY, width: width, height: height)
        userNameRegistration.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 4, width: width , height: height)

        mailAddressLabel.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 5, width: width * 2 / 3, height: height)
        emailAddressError.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: mailAddressLabel.frame.maxY, width: width, height: height)
        mailAddressRegistration.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 6, width: width , height: height)
        
        passwordLabel.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 7, width: width * 2 / 3, height: height)
        passWordError.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: passwordLabel.frame.maxY, width: width, height: height)
        passwordRegistration.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 8, width: width, height: height)
        submit.frame = CGRect(x:x , y:y * 9 , width:width , height:height)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(_ notification:NSNotification){
        if userNameRegistration.isFirstResponder{
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
    

    

    @IBAction func registrationButton(_ sender: Any) {
        let email = mailAddressRegistration.text
        let password = passwordRegistration.text
        let name = userNameRegistration.text
        
        
        if userNameRegistration.text!.isEmpty{
        userNameError.text = "ユーザー名を入力してください。"
            userNameError.textColor = .red
            
        }
        
        
        if mailAddressRegistration.text!.isEmpty{
            emailAddressError.text = "メールアドレスを入力してください。"
            emailAddressError.textColor = .red
        }
        
        
        if passwordRegistration.text!.isEmpty{
        passWordError.text = "パスワードを入力してください。"
            passWordError.textColor = .red
        }
        
        if userNameRegistration.text?.isEmpty != true && mailAddressRegistration.text?.isEmpty != true && passwordRegistration.text?.isEmpty != true{
            Auth.auth().createUser(withEmail: email!, password: password!){ [self](result, error) in
                
                print("sam")
                if error != nil{
                    userNameError.textColor = .systemTeal
                    emailAddressError.textColor = .systemTeal
                    passWordError.textColor = .systemTeal
                    errorString = error!.localizedDescription
                    switch errorString {
                    case "The email address is badly formatted.":
                        emailAddressError.text = "正しいメールアドレスを入力してください。"
                        emailAddressError.textColor = .red
                    case "The password must be 6 characters long or more.":
                        passWordError.text = "パスワードは、6文字以上で入力してください。"
                        passWordError.textColor = .red
                    default:
                        return
                    }
                    
                }else{
                    
                    if let user = result?.user{
                        let req = user.createProfileChangeRequest()
                        req.displayName = name
                        req.commitChanges(){ error in
                            if error == nil{
                                print("プロフィール登録完了")
                                self.performSegue(withIdentifier: "topPageFromResistration", sender: nil)

                            }else{
                                print(error.debugDescription)
                                
                            }
                        }
                    }
                }
            }
        }
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
