//
//  ViewController.swift
//  Firebase_LoginPage_By_Kamryn_Ohly
//
//  Created by Mac on 07/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func letsGoBtn(_ sender: Any) {
        let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(loginViewController, animated: true)
        
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        let createAnAccountViewController = self.storyboard?.instantiateViewController(withIdentifier: "CreateAnAccountViewController") as! CreateAnAccountViewController
        
        self.navigationController?.pushViewController(createAnAccountViewController, animated: true)
        
    }
}

