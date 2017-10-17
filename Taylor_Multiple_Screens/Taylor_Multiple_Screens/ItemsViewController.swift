//
//  ItemsViewController.swift
//  Taylor_Multiple_Screens
//
//  Created by Shane Taylor on 4/27/17.
//  Copyright © 2017 NEIU. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController{
    
    
    
    var allItems=[Item]()
    
    func createItem(){
        
        let newItem=Item(random:true)
        
        allItems.append(newItem)
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
            
        self.tableView.backgroundColor = UIColor(red: 1.0, green: 0.8, blue: 0.0, alpha: 1.0)
        
        for _ in 0..<5{
            createItem()
        }
        
        // table padding
        let insets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return allItems.count
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // set style for hte row and table view cells are reused
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        
        // for each row, it will set the textLabel and detailTextLabel for the cell
        let item=allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
    
    var dollarAmount=0.00
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item=allItems[indexPath.row]
        dollarAmount = item.valueInDollars
        self.performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier=="showDetail"{
            let d = (segue.destination) as! DetailViewController
            d.labelText="$\(dollarAmount)"
        }
        
    }
    
}
