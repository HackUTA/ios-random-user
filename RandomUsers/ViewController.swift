//
//  ViewController.swift
//  RandomUsers
//
//  Created by Cameron Moreau on 9/30/17.
//  Copyright © 2017 HackUTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func btnPressed(_ sender: UIButton) {
        print("You prssed this")
        
        nameLabel.text = "YOU PRESSED ME 🙌"
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

