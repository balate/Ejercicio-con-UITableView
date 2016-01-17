//
//  SecondTableView.swift
//  diccionario
//
//  Created by Javier Contreras on 17/1/16.
//  Copyright © 2016 Ocon. All rights reserved.
//

import Foundation
import UIKit


class SecondTableViewController: UITableViewController {
    
    var SecondArray = [String] ()
    
    var SecondAnswerArray  = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return SecondArray.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCellWithIdentifier("Cell2", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = SecondArray[indexPath.row]
        
        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var indexPath :  NSIndexPath = self.tableView.indexPathForSelectedRow!
        
        var DestViewController = segue.destinationViewController as! ViewController
        
        DestViewController.FirstString =  SecondAnswerArray [indexPath.row]
        
    }

}