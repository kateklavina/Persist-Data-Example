//
//  ViewController.swift
//  Persist Data Example
//
//  Created by Dace Laizane on 22/11/2019.
//  Copyright © 2019 Kate Klavina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    
    //Create a variable to store the initial integer value
    var counter = 0
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = defaults.integer(forKey: "counterKey")
        counterLabel.text = "\(counter)"
    }
    override func didReceiveMemoryWarning() {
    
           super.didReceiveMemoryWarning()
    
           // Dispose of any resources that can be recreated.
    
       }

    @IBAction func adOneButtonPressed(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        defaults.setValue(counter, forKey: "counterKey")
        
        
    }
}

