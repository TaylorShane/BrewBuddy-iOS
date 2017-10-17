//
//  SecondViewController.swift
//  Taylor_Multiple_Screens
//
//  Created by Shane Taylor on 4/11/17.
//  Copyright © 2017 NEIU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bottleSize: UITextField!
    @IBOutlet weak var gallons: UITextField!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var result: UILabel!
    @IBAction func submitClicked(_ sender: Any) {
        
        let size = Double(bottleSize.text!)
        let Gallons = Double(gallons.text!)
        
        let num = ((Gallons! * 128) / size!)+1
        
        result.text = (NSString(format: "%.0f", num) as String) as String //String(abv)+"%"
        //result.text = String(num)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

