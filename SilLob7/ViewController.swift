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
    
    @IBAction func clickDisplay(_ sender: Any) {
        checkIcon1.isHidden = false
        checkIcon2.isHidden = false
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

