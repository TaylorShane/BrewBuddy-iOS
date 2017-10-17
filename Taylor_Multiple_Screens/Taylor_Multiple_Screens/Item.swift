//
//  Item.swift
//  Taylor_Multiple_Screens
//
//  Created by Shane Taylor on 4/27/17.
//  Copyright © 2017 NEIU. All rights reserved.
//

import UIKit

class Item: NSObject{
    var name: String
    var valueInDollars: Double
    let dateCreated: NSDate
    
    init(name: String, valueInDollars: Double){
        self.name = name
        self.valueInDollars = valueInDollars
        self.dateCreated = NSDate()
        
        super.init()
        
    }
    
    convenience init(random: Bool=false){
        if random{
            let hops=["Cascade", "Amarillo", "Centennial", "Fuggle", "Golding"]
            let alphaAcid=["6.7%", "5.8%", "10.2%", "5.4%", "8.3%"]
            
            var idx=arc4random_uniform(UInt32(hops.count))
            let randomAdjective=hops[Int(idx)]
            
            idx=arc4random_uniform(UInt32(alphaAcid.count))
            let randomNoun=alphaAcid[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            
            let randomValue=Double(arc4random_uniform(55)+35)
            
            
            
            self.init(name: randomName, valueInDollars: randomValue)
        }
        else{
            self.init(name: "", valueInDollars: 0)
        }
    }
}

