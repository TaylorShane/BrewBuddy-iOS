//
//  FirstViewController.swift
//  Taylor_Multiple_Screens
//
//  Created by Shane Taylor on 4/11/17.
//  Copyright © 2017 NEIU. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var sg: UITextField!
    @IBOutlet weak var fg: UITextField!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var result: UILabel!
    

    @IBAction func submitClicked(_ sender: Any) {
        
        let start_grav = Double(sg.text!)
        let final_grav = Double(fg.text!)
        let constant: Double = 131.25
        //let constant = 131.25
        let abv = (start_grav! - final_grav!)*constant;
        
        //String(format: "%\(abv)f", self)
        
        
        
        result.text = (NSString(format: "%.2f", abv) as String)+"%" as String //String(abv)+"%"
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

