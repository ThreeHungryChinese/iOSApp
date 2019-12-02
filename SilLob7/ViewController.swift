//
//  ViewController.swift
//  SilLob7
//
//  Created by Kefan Zhang on 11/27/19.
//  Copyright © 2019 Kefan Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var _username: UITextField!
    @IBOutlet weak var _password: UITextField!
    
    @IBOutlet weak var _login_button: UIButton!
    @IBOutlet weak var toefl: UITextField!
    
    @IBOutlet weak var checkIcon1: UIImageView!
    @IBOutlet weak var checkIcon2: UIImageView!
  
    @IBAction func nextPage(_ sender: Any) {
        let delayInSeconds = 1.5
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            //self.performSegue(withIdentifier: "segueId", sender: sender)
            self.checkIcon1.isHidden = false
            self.checkIcon2.isHidden = false

            // here code perfomed with delay

        }
        let delayInSeconds2 = 3.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds2) {
            self.performSegue(withIdentifier: "segueId", sender: sender)
            //self.checkIcon1.isHidden = false
            //self.checkIcon2.isHidden = false

            // here code perfomed with delay

        }
    }
    
    @IBAction func clickDisplay(_ sender: Any) {
        
    }
    
    
    
    @IBAction func LoginButton(_ sender: Any) {

        
        let username = _username.text
        let password = _password.text
        if(username == "" || password == ""){
            return
        }
        //DoLogin(username!,password!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //_password.isSecureTextEntry = true
        // Do any additional setup after loading the view.
    }


}

