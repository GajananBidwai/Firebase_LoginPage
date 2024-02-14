//
//  LoginViewController.swift
//  Firebase_LoginPage_By_Kamryn_Ohly
//
//  Created by Mac on 08/02/24.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func loginClicked(_ sender: UIButton) {
        
        guard let email = emailTextField.text else{return}
        guard let password = passwordTextField.text else{return}
        
        Auth.auth().signIn(withEmail: email, password: password) { firebseResult, error in
            if let error = error{
                print(error)
            }else{
                //go to our home screen
                self.performSegue(withIdentifier: "gotToNext", sender: self)
            }
        }
    }
    
   

}
