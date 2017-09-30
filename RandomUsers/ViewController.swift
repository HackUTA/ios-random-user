//
//  ViewController.swift
//  RandomUsers
//
//  Created by Cameron Moreau on 9/30/17.
//  Copyright © 2017 HackUTA. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    
    @IBAction func btnPressed(_ sender: UIButton) {
        print("You prssed this")
        
        nameLabel.text = "YOU PRESSED ME 🙌"
        
        
        Alamofire.request("https://randomuser.me/api").responseJSON { response in
            if let json = response.result.value {
                let data = JSON(json)
                
                let name = data["results"][0]["name"]
                let firstName = name["first"].stringValue
                let lastName = name["last"].stringValue
                
                self.nameLabel.text = "Hello, \(firstName) \(lastName)"
            }
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

