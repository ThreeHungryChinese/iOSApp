//
//  tempViewController.swift
//  SilLob7
//
//  Created by Kefan Zhang on 11/30/19.
//  Copyright © 2019 Kefan Zhang. All rights reserved.
//

import UIKit
import Alamofire

class tempViewController: ViewController {
    
    @IBOutlet weak var textBox: UITextView!

    @IBOutlet weak var textview: UITextView!
    @IBAction func clickSendReq(_ sender: Any) {
        
        let parameters = ["data": "[331,110,3,3,3,8,1]"]
        AF.request("https://alexa.ec601.onic.xyz:8443", method: .get, parameters: parameters).responseString { response in
            print("response value ! is : " + response.value!)
            let scoreText = response.value!
            self.textview.text = scoreText
            let scoreList = scoreText.components(separatedBy: "<")
            print("分割后：\(scoreText.components(separatedBy: "<"))")
            print(type(of: scoreList))
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
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
    // TODO: Alamofire的GET请求带参数
    
    

