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
        userNameRegistration.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 4, width: width , height: height)
        mailAddressLabel.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 5, width: width * 2 / 3, height: height)
        mailAddressRegistration.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 6, width: width * 2 / 3, height: height)
        
        passwordLabel.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 7, width: width * 2 / 3, height: height)
        passwordRegistration.frame = CGRect(x: userRegistrationTopLabel.frame.minX, y: y * 8, width: width, height: height)
        submit.frame = CGRect(x:x , y:y * 9 , width:width , height:height)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func registrationButton(_ sender: Any) {
        let email = mailAddressRegistration.text
        let password = passwordRegistration.text
        let name = userNameRegistration.text
        
        if userNameRegistration.text?.isEmpty != true && mailAddressRegistration.text?.isEmpty != true && passwordRegistration.text?.isEmpty != true{
            Auth.auth().createUser(withEmail: email!, password: password!){(result, error) in
                
                if error != nil{
                    print(error.debugDescription)
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
