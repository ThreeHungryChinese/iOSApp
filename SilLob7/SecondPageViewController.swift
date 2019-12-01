//
//  SecondPageViewController.swift
//  SilLob7
//
//  Created by Kefan Zhang on 11/30/19.
//  Copyright © 2019 Kefan Zhang. All rights reserved.
//

import UIKit

class SecondPageViewController: ViewController {
    @IBAction func backClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
