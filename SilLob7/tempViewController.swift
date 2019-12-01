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
    @IBOutlet weak var testScoreArea: UITextField!
    
    @IBOutlet weak var textBox: UITextView!

    @IBAction func clickSendReq(_ sender: Any) {
        var preStr = "a"
        preStr = webRequst()
        testScoreArea.text = "aifaheif"
        textBox.text = String(preStr)
        //print(preStr)
    }
    
    func webRequst() -> String{
        let parameters = ["data": "[331,110,3,3,3,8,1]"]
        var emptyString = "a"
        AF.request("https://alexa.ec601.onic.xyz:8443", method: .get, parameters: parameters).responseString { response in
               
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
            
                print(utf8Text)
                
                
            }
                
        }
        //print(emptyString + "this is from emptystring")
        return emptyString
        
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
    
    

