//
//  ViewController.swift
//  HTTP
//
//  Created by SungWoon Cho on 2018. 3. 11..
//  Copyright © 2018년 SunSet. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    let BaseURL = "http://192.168.219.100"
    @IBOutlet weak var TextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("http://192.168.219.100:3000/test", method:.get).responseJSON { response in
            let JSON = response.result.value as! NSDictionary
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.result.value)// result of response serialization
            print(JSON["id"] as! String)
            print(JSON["password"] as! String)
            self.TextView.text = String(describing: JSON["id"] as! String)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

