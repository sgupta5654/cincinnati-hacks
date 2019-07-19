//
//  ViewController.swift
//  First App
//
//  Created by Avi Dhir on 7/15/19.
//  Copyright © 2019 Avi Dhir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalText: UITextField!
    
    @IBOutlet weak var taxText: UITextField!
    
    @IBOutlet weak var tipText: UITextField!
    
    
    
    @IBAction func calculate(_ sender: Any) {
        var total = Double (totalText.text!)!
        var tax = Double (taxText.text!)!/100 + 1.0
        var tip = Double (tipText.text!)!/100 + 1.0
        weak var myfirstlabel: UILabel!
        var count = (total * tax * tip)
        func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            
            
        }
    }
    
   
    
    
   
    
}

