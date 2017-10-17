//
//  DetailViewController.swift
//  Taylor_Multiple_Screens
//
//  Created by Shane Taylor on 4/27/17.
//  Copyright © 2017 NEIU. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController{
    
    @IBOutlet weak var myLabel: UILabel!
    var labelText=""
    
    override func viewDidLoad(){
        super.viewDidLoad()
        myLabel.text=labelText
    }
}

